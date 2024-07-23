import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/settlementapproval/settlementapprovaldetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettlementApprovalHeaderListWidget extends StatelessWidget {
  const SettlementApprovalHeaderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      const SettlementApprovalDetailScreen()));
        },
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 10,
                  decoration: BoxDecoration(
                      color: const Color(0xfffee8e0),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tfsh0$index - RTL route $index',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            color: const Color(0xff2C6B9E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                'Tfsh03U03 - Fayis M ',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                '31 May 2024 | 10:35',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Sales Route',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ))
                  ],
                )),
                /* Container(
                        height: 55.h,
                        width: 1.w,
                        color: Colors.grey.shade300,
                      ),
                      Transform.scale(
                        scale: 0.8,
                        child: Theme(
                          data: ThemeData(
                            checkboxTheme: const CheckboxThemeData(
                              side: BorderSide(color: Colors.grey, width: 2),
                            ),
                          ),
                          child: Checkbox(
                            activeColor: Colors.green.shade300,
                            checkColor: Colors.white,
                            value: _isCheckedList[index],
                            onChanged: (bool? value) {
                              setState(() {
                                _isCheckedList[index] = value!;
                              });
                            },
                          ),
                        ),
                      ), */
              ],
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey[300],
      ),
    );
  }
}
