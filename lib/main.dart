
import 'package:customer_connect/feature/PickingHeader/pick_completed.dart';
import 'package:customer_connect/feature/PickingHeader/pick_ongoing.dart';
import 'package:customer_connect/feature/PickingHeader/pick_pending.dart';
import 'package:customer_connect/feature/view/PickingDetail/picking_completed.dart';
import 'package:customer_connect/feature/view/PickingDetail/picking_not_started.dart';
import 'package:customer_connect/feature/view/load/load_completed.dart';
import 'package:customer_connect/feature/view/load/load_pending.dart';
import 'package:customer_connect/feature/view/load/load_rejected.dart';
import 'package:flutter/material.dart';
import 'feature/view/HomeScreen/homscreen.dart';
import 'feature/view/LoadInDetail/load_detail_pending.dart';
import 'feature/view/PickingDetail/picking_ongoing.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const HomeScreen(),
    );
  }
}
