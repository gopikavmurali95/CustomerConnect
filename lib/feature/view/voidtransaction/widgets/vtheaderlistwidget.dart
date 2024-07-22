import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoidTransactionHeaderListWidget extends StatefulWidget {
  const VoidTransactionHeaderListWidget({super.key});

  @override
  State<VoidTransactionHeaderListWidget> createState() =>
      _VoidTransactionHeaderListWidgetState();
}

class _VoidTransactionHeaderListWidgetState
    extends State<VoidTransactionHeaderListWidget> {
  final List<bool> _isCheckedList = List<bool>.generate(10, (index) => false);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {},
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
                /* Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ORD_BRDBO2_000198', style: blueTextStyle()),
                            Text('BRDB02 - Br Route 02',
                                style: subTitleTextStyle()),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "Order",
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff413434)),
                            ),
                            Text(
                              '20 Jun 2024 | 12:10 ',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.grey),
                            ),
                          ],
                        ), */
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORD_BRDBO2_000198',
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
                                'BRDB02 - Br Route 02',
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
                                'Order',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '20 Jun 2024 | 12:10',
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
                IntrinsicHeight(
                  child: Row(
                    children: [
                      VerticalDivider(
                        color: Colors.grey[300],
                        thickness: 1,
                      ),
                      Checkbox(
                        value: _isCheckedList[index],
                        side: BorderSide(color: Colors.grey[500]!),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        activeColor: Colors.green.shade300,
                        onChanged: (bool? value) {
                          setState(() {
                            _isCheckedList[index] = value!;
                          });
                        },
                      ),
                    ],
                  ),
                )
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
