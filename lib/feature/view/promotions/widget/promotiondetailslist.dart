import 'package:flutter/material.dart';

class PromotionDetailsList extends StatelessWidget {
  const PromotionDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('1'), Text('10'), Text('3')],
                ),
              ),
              Divider()
            ],
          );
        });
  }
}
