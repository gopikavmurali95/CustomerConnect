import 'package:flutter/material.dart';

class CusInsightPromotionDetaoilsList extends StatelessWidget {
  const CusInsightPromotionDetaoilsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // physics: const NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('1'), Text('10'), Text('3')],
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
              )
            ],
          );
        });
  }
}
