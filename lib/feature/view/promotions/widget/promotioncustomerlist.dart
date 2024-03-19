import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionCustomerList extends StatelessWidget {
  const PromotionCustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color(0xffB3DAF7),
                  child: Center(
                    child: Text(
                      'FG',
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
                title: Row(
                  children: [
                    Text(
                      'A02526',
                      style: blueTextStyle(),
                    ),
                    Text(' -Tramp, Muller and Mitchel',
                        style: subTitleTextStyle())
                  ],
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '199521 - Carrefour Hypermarket',
                      style: subTitleTextStyle(),
                    ),
                    Text(
                      'Virtual | Supermarket | Dubai',
                      style: statusTextStyle(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(
                  color: Colors.grey.shade300,
                ),
              )
            ],
          );
        });
  }
}
