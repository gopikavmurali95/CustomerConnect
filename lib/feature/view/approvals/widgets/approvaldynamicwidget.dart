import 'package:flutter/material.dart';

class ApprovalDynamicGridWidget extends StatelessWidget {
  final List<Widget> items;
  final List<bool> visibility;

  const ApprovalDynamicGridWidget(
      {super.key, required this.items, required this.visibility});

  @override
  Widget build(BuildContext context) {
    List<Widget> visibleItems = [];
    for (int i = 0; i < items.length; i++) {
      if (visibility[i]) {
        visibleItems.add(items[i]);
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: LayoutBuilder(
        builder: (context, constraints) {
          double itemWidth = (constraints.maxWidth - 20) / 2;
          return Wrap(
            spacing: 10,
            runSpacing: 10,
            children: visibleItems.map((item) {
              return SizedBox(
                width: itemWidth,
                child: item,
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
