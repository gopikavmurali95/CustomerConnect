import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:customer_connect/feature/data/models/customer_live_location_model/customer_live_location_model.dart';
import 'package:customer_connect/feature/data/models/tracking_sales_man_model/tracking_sales_man_model.dart';
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart';
import 'package:customer_connect/feature/state/bloc/tracksalesmanlist/track_sales_man_list_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TrackSalesManScreen extends StatefulWidget {
  const TrackSalesManScreen({super.key});

  @override
  State<TrackSalesManScreen> createState() => _TrackSalesManScreenState();
}

Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
CameraPosition _kGooglePlex = const CameraPosition(
  target: LatLng(10.834997935450012, 76.1885081487433),
  zoom: 14.4746,
);
List<LatLng> polylineCoordinates = [];
Set<Polyline> polylines = {};
int salesmancount = 0;

TextEditingController _dateController = TextEditingController();
TextEditingController _routeIDCtrl = TextEditingController();
late GoogleMapController mapController;

class _TrackSalesManScreenState extends State<TrackSalesManScreen> {
  @override
  void initState() {
    context.read<GetAllRouteBloc>().add(const GetAllRouteForCusEvent());
    _controller = Completer<GoogleMapController>();

    super.initState();
  }

  Future<void> _createCustomMarkerIcons(
      List<TrackingSalesManModel> salesman) async {
    for (int i = 0; i < salesman.length; i++) {
      BitmapDescriptor icon = await _createCustomMarkerIcon(i, salesman);
      setState(() {
        customIcons[i] = icon;
      });
    }
  }

  Future<void> createCustomerCustomMarkerIcons(
      List<CustomerLiveLocationModel> salesman) async {
    for (int i = 0; i < salesman.length; i++) {
      BitmapDescriptor icon =
          await _createCustomerCustomMarkerIcon(i, salesman);
      setState(() {
        customIcons[i] = icon;
      });
    }
  }

  Future<BitmapDescriptor> _createCustomMarkerIcon(
      int index, List<TrackingSalesManModel> salesman) async {
    final String label = salesman[index].moveStatus == 'Start Day'
        ? AppLocalizations.of(context)!.start
        : salesman[index].moveStatus == 'Current Location'
            ? AppLocalizations.of(context)!.current
            : (index).toString();

    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    const double radius = 50.0;
    canvas.drawCircle(const Offset(radius, radius), radius, paint);

    final TextPainter textPainter = TextPainter(
      textDirection: ui.TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    textPainter.text = TextSpan(
      text: label,
      style: const TextStyle(fontSize: 25.0, color: Colors.white),
    );
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        radius - textPainter.width / 2,
        radius - textPainter.height / 2,
      ),
    );

    final ui.Image image = await pictureRecorder.endRecording().toImage(
          (radius * 2).toInt(),
          (radius * 2).toInt(),
        );
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List resizedBytes = byteData!.buffer.asUint8List();

    // ignore: deprecated_member_use
    return BitmapDescriptor.fromBytes(resizedBytes);
  }

  Map<int, BitmapDescriptor> customIcons = {};

  Set<Marker> _createMarkers(List<TrackingSalesManModel> salesman) {
    return salesman.asMap().entries.map((entry) {
      int index = entry.key;
      TrackingSalesManModel coord = entry.value;
      return Marker(
        markerId: MarkerId(coord.customer ?? ''),
        position: coord.geocode != null
            ? LatLng(
                double.parse(coord.geocode?.split(',').toList()[0] ?? '0.00'),
                double.parse(coord.geocode?.split(',').toList()[1] ?? '0.00'))
            : const LatLng(0, 0),
        infoWindow: InfoWindow(
          title: coord.customer,
          snippet: '${AppLocalizations.of(context)!.duration}: ${coord.time}',
          onTap: () {
            _showDetailDialog(coord);
          },
        ),
        icon: customIcons[index] ??
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
    }).toSet();
  }

  Set<Marker> _createCustomerMarkers(List<CustomerLiveLocationModel> salesman) {
    return salesman.asMap().entries.map((entry) {
      int index = entry.key;
      CustomerLiveLocationModel coord = entry.value;
      return Marker(
        markerId: MarkerId(coord.user ?? ''),
        position: coord.geocode != null
            ? LatLng(
                double.parse(coord.geocode?.split(',').toList()[0] ?? '0.00'),
                double.parse(coord.geocode?.split(',').toList()[1] ?? '0.00'))
            : const LatLng(0, 0),
        infoWindow: InfoWindow(
          title: coord.user,
          snippet: '${AppLocalizations.of(context)!.duration}: ${coord.time}',
          onTap: () {
            _showCustomerDetailDialog(coord);
          },
        ),
        icon: customIcons[index] ??
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
    }).toSet();
  }

  Future<BitmapDescriptor> _createCustomerCustomMarkerIcon(
      int index, List<CustomerLiveLocationModel> salesman) async {
    final String label = index == 0
        ? AppLocalizations.of(context)!.start
        : index == salesman.length - 1
            ? AppLocalizations.of(context)!.current
            : (index).toString();

    final ui.PictureRecorder pictureRecorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(pictureRecorder);
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    const double radius = 50.0;
    canvas.drawCircle(const Offset(radius, radius), radius, paint);

    final TextPainter textPainter = TextPainter(
      textDirection: ui.TextDirection.ltr,
      textAlign: TextAlign.center,
    );
    textPainter.text = TextSpan(
      text: label,
      style: const TextStyle(fontSize: 25.0, color: Colors.white),
    );
    textPainter.layout();
    textPainter.paint(
      canvas,
      Offset(
        radius - textPainter.width / 2,
        radius - textPainter.height / 2,
      ),
    );

    final ui.Image image = await pictureRecorder.endRecording().toImage(
          (radius * 2).toInt(),
          (radius * 2).toInt(),
        );
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List resizedBytes = byteData!.buffer.asUint8List();

    // ignore: deprecated_member_use
    return BitmapDescriptor.fromBytes(resizedBytes);
  }

  void _showDetailDialog(TrackingSalesManModel salesman) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(salesman.customer ?? ''),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('${AppLocalizations.of(context)!.date}: \$${salesman.date}'),
              Text(
                  '${AppLocalizations.of(context)!.duration}: ${salesman.duration}'),
              Text('${AppLocalizations.of(context)!.time}: ${salesman.time}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(AppLocalizations.of(context)!.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCustomerDetailDialog(CustomerLiveLocationModel salesman) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(salesman.user ?? ''),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('${AppLocalizations.of(context)!.date}: \$${salesman.date}'),
              Text(
                  '${AppLocalizations.of(context)!.duration}: ${salesman.duration}'),
              Text('${AppLocalizations.of(context)!.time}: ${salesman.time}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text(AppLocalizations.of(context)!.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

/*   Future<void> _getRoutePolyline(
      List<TrackingSalesManModel> salesmanlist) async {
    const String apiKey = 'AIzaSyCm0TJgSA9e4riTkSWFaUBVme9ARwmQyHQ';
    const String baseUrl =
        'https://maps.googleapis.com/maps/api/directions/json';
    final String origin =
        '${double.parse(salesmanlist.first.geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(salesmanlist.first.geocode?.split(',').toList()[1] ?? '0.00')}';
    final String destination =
        '${double.parse(salesmanlist.last.geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(salesmanlist.last.geocode?.split(',').toList()[0] ?? '0.00')}';
    final String waypoints = salesmanlist
        .sublist(1, salesmanlist.length - 1)
        .map((s) =>
            '${double.parse(s.geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(s.geocode?.split(',').toList()[1] ?? '0.00')}')
        .join('|');

    final String url =
        '$baseUrl?origin=$origin&destination=$destination&waypoints=$waypoints&key=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      log(response.body);
      final data = jsonDecode(response.body);
      if (data['routes'].isNotEmpty) {
        final points = data['routes'][0]['overview_polyline']['points'];
        polylineCoordinates = _decodePolyline(points);
        setState(() {
          polylines = {
            Polyline(
              polylineId: const PolylineId('route'),
              color: Colors.red,
              points: polylineCoordinates,
              width: 5,
            ),
          };
        });
      }
    } else {
      throw Exception('Failed to load route');
    }
  } */
  Future<void> _getRoutePolyline(
      List<TrackingSalesManModel> salesmanList) async {
    const String apiKey = 'AIzaSyCm0TJgSA9e4riTkSWFaUBVme9ARwmQyHQ';
    const String baseUrl =
        'https://maps.googleapis.com/maps/api/directions/json';

    List<LatLng> _decodePolyline(String encoded) {
      List<LatLng> poly = [];
      int index = 0, len = encoded.length;
      int lat = 0, lng = 0;

      while (index < len) {
        int b, shift = 0, result = 0;
        do {
          b = encoded.codeUnitAt(index++) - 63;
          result |= (b & 0x1f) << shift;
          shift += 5;
        } while (b >= 0x20);
        int dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
        lat += dlat;

        shift = 0;
        result = 0;
        do {
          b = encoded.codeUnitAt(index++) - 63;
          result |= (b & 0x1f) << shift;
          shift += 5;
        } while (b >= 0x20);
        int dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
        lng += dlng;

        poly.add(LatLng(lat / 1E5, lng / 1E5));
      }
      return poly;
    }

    // Function to get directions from the API
    Future<Map<String, dynamic>> _fetchDirections(
        String origin, String destination, String waypoints) async {
      final String url =
          '$baseUrl?origin=$origin&destination=$destination&waypoints=$waypoints&key=$apiKey';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load route');
      }
    }

    List<LatLng> polylineCoordinates = [];

    for (int i = 0; i < salesmanList.length; i += 24) {
      final String origin =
          '${double.parse(salesmanList[i].geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(salesmanList[i].geocode?.split(',').toList()[1] ?? '0.00')}';
      final int endIndex =
          (i + 24 >= salesmanList.length) ? salesmanList.length - 1 : i + 24;
      final String destination =
          '${double.parse(salesmanList[endIndex].geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(salesmanList[endIndex].geocode?.split(',').toList()[1] ?? '0.00')}';
      final String waypoints = salesmanList
          .sublist(i + 1, endIndex)
          .map((s) =>
              '${double.parse(s.geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(s.geocode?.split(',').toList()[1] ?? '0.00')}')
          .join('|');

      final data = await _fetchDirections(origin, destination, waypoints);
      if (data['routes'].isNotEmpty) {
        final points = data['routes'][0]['overview_polyline']['points'];
        polylineCoordinates.addAll(_decodePolyline(points));
      }
    }

    setState(() {
      polylines = {
        Polyline(
          polylineId: const PolylineId('route'),
          color: Colors.red,
          points: polylineCoordinates,
          width: 5,
        ),
      };
    });
  }

  Future<void> _getCustomerRoutePolyline(
      List<CustomerLiveLocationModel> salesmanList) async {
    const String apiKey = 'AIzaSyCm0TJgSA9e4riTkSWFaUBVme9ARwmQyHQ';
    const String baseUrl =
        'https://maps.googleapis.com/maps/api/directions/json';

    // Function to decode polyline points
    List<LatLng> _decodePolyline(String encoded) {
      List<LatLng> poly = [];
      int index = 0, len = encoded.length;
      int lat = 0, lng = 0;

      while (index < len) {
        int b, shift = 0, result = 0;
        do {
          b = encoded.codeUnitAt(index++) - 63;
          result |= (b & 0x1f) << shift;
          shift += 5;
        } while (b >= 0x20);
        int dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
        lat += dlat;

        shift = 0;
        result = 0;
        do {
          b = encoded.codeUnitAt(index++) - 63;
          result |= (b & 0x1f) << shift;
          shift += 5;
        } while (b >= 0x20);
        int dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
        lng += dlng;

        poly.add(LatLng(lat / 1E5, lng / 1E5));
      }
      return poly;
    }

    Future<Map<String, dynamic>> _fetchDirections(
        String origin, String destination, String waypoints) async {
      final String url =
          '$baseUrl?origin=$origin&destination=$destination&waypoints=$waypoints&key=$apiKey';
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load route');
      }
    }

    List<LatLng> polylineCoordinates = [];

    for (int i = 0; i < salesmanList.length; i += 24) {
      final String origin =
          '${double.parse(salesmanList[i].geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(salesmanList[i].geocode?.split(',').toList()[1] ?? '0.00')}';
      final int endIndex =
          (i + 24 >= salesmanList.length) ? salesmanList.length - 1 : i + 24;
      final String destination =
          '${double.parse(salesmanList[endIndex].geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(salesmanList[endIndex].geocode?.split(',').toList()[1] ?? '0.00')}';
      final String waypoints = salesmanList
          .sublist(i + 1, endIndex)
          .map((s) =>
              '${double.parse(s.geocode?.split(',').toList()[0] ?? '0.00')},${double.parse(s.geocode?.split(',').toList()[1] ?? '0.00')}')
          .join('|');

      final data = await _fetchDirections(origin, destination, waypoints);
      if (data['routes'].isNotEmpty) {
        final points = data['routes'][0]['overview_polyline']['points'];
        polylineCoordinates.addAll(_decodePolyline(points));
      }
    }

    setState(() {
      polylines = {
        Polyline(
          polylineId: const PolylineId('route'),
          color: Colors.red,
          points: polylineCoordinates,
          width: 5,
        ),
      };
    });
  }

  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> polyline = [];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = (result & 1) != 0 ? ~(result >> 1) : (result >> 1);
      lng += dlng;

      polyline.add(LatLng(lat / 1e5, lng / 1e5));
    }

    return polyline;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<TrackSalesManListBloc, TrackSalesManListState>(
        listener: (context, state) {
          state.when(
            gettrackSalesManDataState: (salesman) async {
              if (salesman != null) {
                _createCustomMarkerIcons(salesman);
                final GoogleMapController controller = await _controller.future;
                await controller.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                        bearing: 192.8334901395799,
                        target: LatLng(
                            double.parse(salesman.first.geocode
                                    ?.split(',')
                                    .toList()[0] ??
                                '0.00'),
                            double.parse(salesman.first.geocode
                                    ?.split(',')
                                    .toList()[1] ??
                                '0.00')),
                        tilt: 59.440717697143555,
                        zoom: 19.151926040649414)));
              }
            },
            trackSalesManFailedState: () {},
            trackAllCustomersState: (customers) async {
              if (customers != null) {
                createCustomerCustomMarkerIcons(customers);
                final GoogleMapController controller = await _controller.future;
                await controller.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(
                        bearing: 192.8334901395799,
                        target: LatLng(
                            double.parse(customers.first.geocode
                                    ?.split(',')
                                    .toList()[0] ??
                                '0.00'),
                            double.parse(customers.first.geocode
                                    ?.split(',')
                                    .toList()[1] ??
                                '0.00')),
                        tilt: 59.440717697143555,
                        zoom: 19.151926040649414)));
              }
            },
          );
        },
        child: Column(
          children: [
            BlocBuilder<TrackSalesManListBloc, TrackSalesManListState>(
              builder: (context, state) {
                return Expanded(
                  child: Stack(
                    children: [
                      state.when(
                        gettrackSalesManDataState: (salesman) => GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            mapController = controller;
                            _controller.complete(controller);
                          },
                          markers: _createMarkers(salesman ?? []),
                          polylines: polylines,
                        ),
                        trackSalesManFailedState: () => GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            mapController = controller;
                            _controller.complete(controller);
                          },
                          // markers: _createMarkers(),
                          // polylines: polylines,
                        ),
                        trackAllCustomersState: (customers) => GoogleMap(
                          mapType: MapType.normal,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            mapController = controller;
                            _controller.complete(controller);
                          },
                          markers: _createCustomerMarkers(customers ?? []),
                          polylines: polylines,
                        ),
                      ),
                      Positioned(
                        top: 25,
                        left: 10,
                        right: 10,
                        child: Row(
                          children: [
                            Expanded(
                              child: BlocBuilder<GetAllRouteBloc,
                                  GetAllRouteState>(
                                builder: (context, state) {
                                  return state.when(
                                    getAllRoutesSuccessState: (routes) =>
                                        routes == null
                                            ? Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                child: ShimmerContainers(
                                                    height: 30.h,
                                                    width: double.infinity),
                                              )
                                            : Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 10),
                                                child: Container(
                                                    height: 40.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        border: Border.all(
                                                            color: Colors
                                                                .grey.shade200),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        boxShadow: const [
                                                          BoxShadow(
                                                              // ignore: use_full_hex_values_for_flutter_colors
                                                              color: Color(
                                                                  0xff00000050),
                                                              blurRadius: 0.4,
                                                              spreadRadius: 0.4)
                                                        ]),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 10),
                                                      child: Theme(
                                                        data: ThemeData(
                                                            canvasColor:
                                                                Colors.white),
                                                        child: DropdownSearch<
                                                            CuSInsRotList>(
                                                          popupProps:
                                                              PopupProps.menu(
                                                                  showSearchBox:
                                                                      true,
                                                                  searchFieldProps:
                                                                      TextFieldProps(
                                                                    showCursor:
                                                                        true,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          AppLocalizations.of(context)!
                                                                              .searchRoute,
                                                                      hintStyle:
                                                                          kfontstyle(),
                                                                      border:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(color: Colors.grey[200]!),
                                                                      ),
                                                                      focusedBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(color: Colors.grey[200]!),
                                                                      ),
                                                                      enabledBorder:
                                                                          UnderlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(color: Colors.grey[200]!),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  menuProps:
                                                                      const MenuProps(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                  )),
                                                          dropdownDecoratorProps:
                                                              const DropDownDecoratorProps(
                                                            dropdownSearchDecoration:
                                                                InputDecoration(
                                                                    border:
                                                                        InputBorder
                                                                            .none),
                                                          ),
                                                          items: routes,
                                                          // asyncItems: (String filter) =>
                                                          //     getData(filter),
                                                          selectedItem:
                                                              routes[0],
                                                          itemAsString:
                                                              (CuSInsRotList
                                                                      u) =>
                                                                  u.rotName ??
                                                                  '',
                                                          onChanged:
                                                              (CuSInsRotList?
                                                                  data) {
                                                            _routeIDCtrl.text =
                                                                data!.rotId ??
                                                                    '';
                                                          },
                                                        ),
                                                      ),
                                                    )),
                                              ),
                                    getAllRoutesFailedState: () => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .noRoutesAvailable,
                                          style: kfontstyle(),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Container(
                              height: 40.h,
                              width: 130.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey.shade200),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: const [
                                  BoxShadow(
                                    // ignore: use_full_hex_values_for_flutter_colors
                                    color: Color(0xff00000050),
                                    blurRadius: 0.4,
                                    spreadRadius: 0.4,
                                  ),
                                ],
                              ),
                              child: InkWell(
                                onTap: () => _selectDate(context),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      const Icon(Icons.calendar_today,
                                          color: Colors.grey),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: TextFormField(
                                          controller: _dateController,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText:
                                                AppLocalizations.of(context)!
                                                    .selectdate,
                                            hintStyle:
                                                const TextStyle(fontSize: 11),
                                          ),
                                          style: const TextStyle(fontSize: 11),
                                          enabled: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            GestureDetector(
                              onTap: () {
                                if (_dateController.text.isEmpty ||
                                    _routeIDCtrl.text.isEmpty) {
                                  showCupertinoDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title: Text(
                                          AppLocalizations.of(context)!.alert),
                                      content: Text(AppLocalizations.of(
                                              context)!
                                          .pleaseMakeSureYouHaveSelectedaRouteAndDate),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                            // Navigator.pop(context);
                                          },
                                          child: Text(
                                              AppLocalizations.of(context)!.ok),
                                        ),
                                      ],
                                    ),
                                  );
                                } else {
                                  context
                                      .read<TrackSalesManListBloc>()
                                      .add(const ClearsalessmansEvent());

                                  context.read<TrackSalesManListBloc>().add(
                                        GetSalesmanLocationEvent(
                                            date: _dateController.text,
                                            rotID:
                                                _routeIDCtrl.text /* '44' */),
                                      );
                                }
                              },
                              child: Container(
                                height: 37.h,
                                width: 40.h,
                                decoration: BoxDecoration(
                                  color: Colors.red.shade400,
                                  border:
                                      Border.all(color: Colors.grey.shade200),
                                  borderRadius: BorderRadius.circular(10.0),
                                  boxShadow: const [
                                    BoxShadow(
                                      // ignore: use_full_hex_values_for_flutter_colors
                                      color: Color(0xff00000050),
                                      blurRadius: 0.4,
                                      spreadRadius: 0.4,
                                    ),
                                  ],
                                ),
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                          top: 90,
                          left: 0,
                          right: 10,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  if (_dateController.text.isEmpty) {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(AppLocalizations.of(
                                                context)!
                                            .pleaseMakeSureYouHaveSelectedaDate),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              // Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    context.read<TrackSalesManListBloc>().add(
                                        GetAllCustomersLocationEvent(
                                            date: _dateController.text));
                                  }
                                },
                                child: Tooltip(
                                  message: AppLocalizations.of(context)!
                                      .trackCustomers,
                                  child: Image.asset(
                                    'assets/images/salesman.png',
                                    height: 40.h,
                                  ),
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton:
          BlocBuilder<TrackSalesManListBloc, TrackSalesManListState>(
        builder: (context, state) {
          return state.when(
            gettrackSalesManDataState: (salesman) =>
                salesman == null || salesman.isEmpty
                    ? const SizedBox()
                    : FloatingActionButton.extended(
                        backgroundColor: Colors.white,
                        onPressed: () async {
                          _getRoutePolyline(salesman);
                        },
                        label: Text(AppLocalizations.of(context)!.showRoute),
                        icon: Image.asset(
                          "assets/images/ts.png",
                          height: 23.h,
                          width: 30.h,
                        ),
                      ),
            trackSalesManFailedState: () => const SizedBox(),
            trackAllCustomersState: (customers) =>
                customers == null || customers.isEmpty
                    ? const SizedBox()
                    : FloatingActionButton.extended(
                        backgroundColor: Colors.white,
                        onPressed: () async {
                          _getCustomerRoutePolyline(customers);
                        },
                        label: Text(AppLocalizations.of(context)!.showRoute),
                        icon: Image.asset(
                          "assets/images/ts.png",
                          height: 23.h,
                          width: 30.h,
                        ),
                      ),
          );
        },
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Colors.blue,
            colorScheme: const ColorScheme.light(primary: Colors.blue),
            buttonTheme:
                const ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }
}

class Salesman {
  final String id;
  final String name;
  final LatLng location;
  final double sales;
  final String email;
  final String phone;

  Salesman({
    required this.id,
    required this.name,
    required this.location,
    required this.sales,
    required this.email,
    required this.phone,
  });
}
