import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainers extends StatelessWidget {
  final double height;
  final double width;
  const ShimmerContainers(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: const BoxDecoration(),
      width: width,
      child: Shimmer.fromColors(
        baseColor: Colors.grey.withOpacity(0.1),
        highlightColor: Colors.white.withOpacity(0.4),
        child: const Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}
