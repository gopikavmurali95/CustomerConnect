import 'dart:async';

import 'package:flutter/material.dart';
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

  final List<LatLng> coordinates = const [
    LatLng(10.834997935450012, 76.1885081487433),
    LatLng(10.84361373409628, 76.1902781257337),
    LatLng(10.8245854206049, 76.18832909388622),
  ];
  Future<BitmapDescriptor> _createCustomMarkerIcon() async {
    return await BitmapDescriptor.asset(
      const ImageConfiguration(size: Size(48, 48)),
      'assets/images/salesman.png',
    );
  }

  BitmapDescriptor? customIcon;
  Set<Marker> _createMarkers() {
    return coordinates.map((coord) {
      return Marker(
        markerId: MarkerId(coord.toString()),
        position: coord,
        icon: customIcon ??
            BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      );
    }).toSet();
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
              target: coordinates[salesmancount],
              tilt: 59.440717697143555,
              zoom: 19.151926040649414);
          if (salesmancount == coordinates.length - 1) {
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
