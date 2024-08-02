import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrackSalesManScreen extends StatefulWidget {
  const TrackSalesManScreen({super.key});

  @override
  State<TrackSalesManScreen> createState() => _TrackSalesManScreenState();
}

Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
const CameraPosition _kGooglePlex = CameraPosition(
  target: LatLng(10.800035714630257, 76.18015914681826),
  zoom: 14.4746,
);

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
    name: 'Jane Smith',
    location: const LatLng(10.8245854206049, 76.18832909388622),
    sales: 9876.54,
    email: 'jane.smith@example.com',
    phone: '987-654-3210',
  ),
  Salesman(
    id: '3',
    name: 'Jake Doe',
    location: const LatLng(10.800035714630257, 76.18015914681826),
    sales: 8765.43,
    email: 'jake.doe@example.com',
    phone: '876-543-2109',
  ),
];

class _TrackSalesManScreenState extends State<TrackSalesManScreen> {
  @override
  void initState() {
    _controller = Completer<GoogleMapController>();
    _createCustomMarkerIcon().then((icon) {
      setState(() {
        customIcon = icon;
      });
    });
    super.initState();
  }

  Future<BitmapDescriptor> _createCustomMarkerIcon() async {
    final ByteData data = await rootBundle.load('assets/images/salesman.png');
    final Uint8List bytes = data.buffer.asUint8List();

    final ui.Codec codec = await ui.instantiateImageCodec(bytes,
        targetWidth: 120, targetHeight: 120);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    final ui.Image image = frameInfo.image;

    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List resizedBytes = byteData!.buffer.asUint8List();

    // ignore: deprecated_member_use
    return BitmapDescriptor.fromBytes(resizedBytes);
  }

  BitmapDescriptor? customIcon;

  Set<Marker> _createMarkers() {
    return salesmanlist.map((coord) {
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
        icon: customIcon ??
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
            child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
              markers: _createMarkers(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final GoogleMapController controller = await _controller.future;
          CameraPosition salesman = CameraPosition(
              bearing: 192.8334901395799,
              target: salesmanlist[salesmancount].location,
              tilt: 59.440717697143555,
              zoom: 19.151926040649414);
          if (salesmancount == salesmanlist.length - 1) {
            salesmancount = 0;
            await controller
                .animateCamera(CameraUpdate.newCameraPosition(salesman));
          } else {
            await controller
                .animateCamera(CameraUpdate.newCameraPosition(salesman));
            salesmancount += 1;
          }
        },
        label: const Text("Next salesman"),
        icon: const Icon(Icons.person),
      ),
    );
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
