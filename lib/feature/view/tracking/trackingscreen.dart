import 'dart:async';
import 'dart:developer';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:intl/intl.dart';

class TrackSalesManScreen extends StatefulWidget {
  const TrackSalesManScreen({super.key});

  @override
  State<TrackSalesManScreen> createState() => _TrackSalesManScreenState();
}

Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
CameraPosition _kGooglePlex = CameraPosition(
  target: salesmanlist[salesmanlist.length - 1].location,
  zoom: 14.4746,
);
List<LatLng> polylineCoordinates = [];
Set<Polyline> polylines = {};
int salesmancount = 0;
final salesmanlist = [
  Salesman(
    id: '1',
    name: 'John Doe',
    location: const LatLng(10.834997935450012, 76.1885081487433),
    sales: 12345.67,
    email: 'john.doe@example.com',
    phone: '123-456-7890',
  ),
  Salesman(
    id: '2',
    name: 'Jane  ',
    location: const LatLng(10.8245854206049, 76.18832909388622),
    sales: 9876.54,
    email: 'jane.smith@example.com',
    phone: '987-654-3210',
  ),
  Salesman(
    id: '3',
    name: '  Smith',
    location: const LatLng(10.841668705014262, 76.17316329800641),
    sales: 9876.54,
    email: 'jane.smith@example.com',
    phone: '987-654-3210',
  ),
  Salesman(
    id: '4',
    name: 'Jane Smith',
    location: const LatLng(10.86648103197889, 76.16332921814873),
    sales: 9876.54,
    email: 'jane.smith@example.com',
    phone: '987-654-3210',
  ),
  Salesman(
    id: '5',
    name: 'Jake Doe',
    location: const LatLng(10.800035714630257, 76.18015914681826),
    sales: 8765.43,
    email: 'jake.doe@example.com',
    phone: '876-543-2109',
  ),
];
TextEditingController _dateController = TextEditingController();

class _TrackSalesManScreenState extends State<TrackSalesManScreen> {
  @override
  void initState() {
    context.read<GetAllRouteBloc>().add(const GetAllRouteForCusEvent());
    _controller = Completer<GoogleMapController>();
    _createCustomMarkerIcons();
    super.initState();
  }

  Future<void> _createCustomMarkerIcons() async {
    for (int i = 0; i < salesmanlist.length; i++) {
      BitmapDescriptor icon = await _createCustomMarkerIcon(i);
      setState(() {
        customIcons[i] = icon;
      });
    }
  }

  Future<BitmapDescriptor> _createCustomMarkerIcon(int index) async {
    final String label = index == 0
        ? 'Start'
        : index == salesmanlist.length - 1
            ? 'Current'
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

    return BitmapDescriptor.fromBytes(resizedBytes);
  }

  Map<int, BitmapDescriptor> customIcons = {};

  Set<Marker> _createMarkers() {
    return salesmanlist.asMap().entries.map((entry) {
      int index = entry.key;
      Salesman coord = entry.value;
      return Marker(
        markerId: MarkerId(coord.id),
        position: coord.location,
        infoWindow: InfoWindow(
          title: coord.name,
          snippet: 'Sales: \$${coord.sales}',
          onTap: () {
            _showDetailDialog(coord);
          },
        ),
        icon: customIcons[index] ??
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
    }).toSet();
  }

  void _showDetailDialog(Salesman salesman) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(salesman.name),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Sales: \$${salesman.sales}'),
              Text('Email: ${salesman.email}'),
              Text('Phone: ${salesman.phone}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _getRoutePolyline() async {
    const String apiKey = 'AIzaSyCm0TJgSA9e4riTkSWFaUBVme9ARwmQyHQ';
    const String baseUrl =
        'https://maps.googleapis.com/maps/api/directions/json';
    final String origin =
        '${salesmanlist.first.location.latitude},${salesmanlist.first.location.longitude}';
    final String destination =
        '${salesmanlist.last.location.latitude},${salesmanlist.last.location.longitude}';
    final String waypoints = salesmanlist
        .sublist(1, salesmanlist.length - 1)
        .map((s) => '${s.location.latitude},${s.location.longitude}')
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
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: _createMarkers(),
                  polylines: polylines,
                ),
                Positioned(
                  top: 25,
                  left: 10,
                  right: 10,
                  child: Row(
                    children: [
                      Expanded(
                        child: BlocBuilder<GetAllRouteBloc, GetAllRouteState>(
                          builder: (context, state) {
                            return state.when(
                              getAllRoutesSuccessState: (routes) => routes ==
                                      null
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: ShimmerContainers(
                                          height: 30.h, width: double.infinity),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Container(
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  color: Colors.grey.shade200),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              boxShadow: const [
                                                BoxShadow(
                                                    // ignore: use_full_hex_values_for_flutter_colors
                                                    color: Color(0xff00000050),
                                                    blurRadius: 0.4,
                                                    spreadRadius: 0.4)
                                              ]),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Theme(
                                              data: ThemeData(
                                                  canvasColor: Colors.white),
                                              child:
                                                  DropdownSearch<CuSInsRotList>(
                                                popupProps: PopupProps.menu(
                                                    showSearchBox: true,
                                                    searchFieldProps:
                                                        TextFieldProps(
                                                      showCursor: true,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Search route',
                                                        hintStyle: kfontstyle(),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                        ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      200]!),
                                                        ),
                                                      ),
                                                    ),
                                                    menuProps: const MenuProps(
                                                      backgroundColor:
                                                          Colors.white,
                                                    )),
                                                dropdownDecoratorProps:
                                                    const DropDownDecoratorProps(
                                                  dropdownSearchDecoration:
                                                      InputDecoration(
                                                          border:
                                                              InputBorder.none),
                                                ),
                                                items: routes,
                                                // asyncItems: (String filter) =>
                                                //     getData(filter),
                                                selectedItem: routes[0],
                                                itemAsString:
                                                    (CuSInsRotList u) =>
                                                        u.rotName ?? '',
                                                onChanged:
                                                    (CuSInsRotList? data) {},
                                              ),
                                            ),
                                          )),
                                    ),
                              getAllRoutesFailedState: () => Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Center(
                                  child: Text(
                                    'No routes available',
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
                        width: 150.w,
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
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                const Icon(Icons.calendar_today,
                                    color: Colors.grey),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: TextFormField(
                                    controller: _dateController,
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Select date',
                                      hintStyle: TextStyle(fontSize: 11),
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
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.white,
        onPressed: () async {
          _getRoutePolyline();
        },
        label: const Text("Show Route"),
        icon: Image.asset(
          "assets/images/ts.png",
          height: 23.h,
          width: 30.h,
        ),
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
        _dateController.text = DateFormat.yMMMd().format(picked);
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
