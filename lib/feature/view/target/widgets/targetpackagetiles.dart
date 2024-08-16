import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/target_details_list_model/target_details_list_model.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TargetPAckageContainerWidget extends StatelessWidget {
  final TargetDetailsListModel details;
  const TargetPAckageContainerWidget({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    final containerGradients = [
      [
        const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffe9f2f6),
            Color(0xffdcdef7),
          ],
        ),
        const LinearGradient(colors: [
          Color(0xff8a91e4),
          Color(0xff535bcc),
        ]),
        const LinearGradient(
          colors: [
            Color(0xffc5c7e9),
            Color(0xff969add),
          ],
        ),
      ],
      [
        const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xfff5f6e9),
            Color(0xfff7f3dc),
          ],
        ),
        const LinearGradient(colors: [
          Color(0xffe0dc72),
          Color(0xffc2c72e),
        ]),
        const LinearGradient(
          colors: [
            Color(0xffe9e5c6),
            Color(0xffdcda95),
          ],
        ),
      ]
    ];
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: containerGradients[0][0]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.targetAmount,
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    details.targetAmt ?? '',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.achievedAmount,
                    // 'Achieved Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        details.achAmt ?? '',
                        style: countHeading(),
                      ),
                      Text(
                        '${details.achAmtPerc}%',
                        style: countHeading(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "MTD ${AppLocalizations.of(context)!.gapAmount}",
                    // 'MTD Gap Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    details.mTDGapAmt ?? '',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.monthlyGapAmount,
                    // 'Monthly Gap Amount',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        details.monthGapAmt ?? '',
                        style: countHeading(),
                      ),
                      Row(
                        children: [
                          Text(
                            '${details.monthGapAmtPerc}%',
                            style: countHeading(),
                          ),
                          /* Text(
                            '(36%+8%)',
                            style: kfontstyle(
                              fontSize: 8.sp,
                            ),
                          ) */
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 6.w,
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(15)),
                gradient: containerGradients[1][0]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.targetQuantity,
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    details.targetQty ?? '',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.achievedQuantity,
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        details.achQty ?? '',
                        style: countHeading(),
                      ),
                      Text(
                        '${details.achQtyPerc}%',
                        style: countHeading(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    "MTD${AppLocalizations.of(context)!.gapQuantity}",
                    // 'MTD Gap Quantity',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Text(
                    details.mTDGapQty ?? '',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  DottedLine(dashColor: Colors.grey.shade400),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    AppLocalizations.of(context)!.monthlyGapQuantity,
                    // 'Monthly Gap Quantity',
                    style: kfontstyle(fontSize: 9.sp, color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        details.monthGapQty ?? '',
                        style: countHeading(),
                      ),
                      Row(
                        children: [
                          Text(
                            '${details.monthGapQtyPerc}%',
                            style: countHeading(),
                          ),
                          /* Text(
                            '(36%+8%)',
                            style: kfontstyle(
                              fontSize: 8.sp,
                            ),
                          ) */
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
