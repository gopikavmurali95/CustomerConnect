import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/promotion_header_model/promotion_header_model.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart';
import 'package:customer_connect/feature/view/assignmentgroup/assignmentgroup.dart';
import 'package:customer_connect/feature/view/promotions/promotioncustomer.dart';

import 'package:customer_connect/feature/view/promotions/widget/promotiondetailslist.dart';
import 'package:customer_connect/feature/view/qualificationgroup/qualificationgroup.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionDetails extends StatelessWidget {
  final PromotionHeaderModel promotion;
  const PromotionDetails({super.key, required this.promotion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: Transform.flip(
          flipX: selectedLocale?.languageCode == "en" ? false : true,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 20,
            ),
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.promotiondetails,
          //"Promotion Details ",
          style: appHeading(),
        ),
        // bottom: PreferredSize(
        //   preferredSize: const Size(100, 230),
        //   child:
        // ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshPromotionDetailScreen(context, promotion),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: const Color(0xffB3DAF7),
                                    child: Center(
                                      child: Text(
                                        promotion.pName!.split('').toList()[0],
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Column(
                                    //mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        promotion.pName ?? '',
                                        style: blueTextStyle(),
                                      ),
                                      Text(
                                        promotion.dateRange ?? '',
                                        style: subTextStyle(),
                                      ),
                                      Text(
                                        promotion.pCode ?? '',
                                        style: subTextStyle(),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context
                                    .read<PromotionCustomerBloc>()
                                    .add(const ClearOromotionCustomer());
                                context.read<PromotionCustomerBloc>().add(
                                    GetPromotionCustomerEvent(
                                        id: promotion.qid ?? '',
                                        searchQuery: ''));
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PromotionCustomer(
                                              promotion: promotion,
                                            )));
                              },
                              child: Row(
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.customers,
                                    style: TextStyle(fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Transform.flip(
                                    flipX: selectedLocale?.languageCode == "en"
                                        ? false
                                        : true,
                                    child: const Icon(
                                      Icons.keyboard_arrow_right,
                                      size: 18,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => QualificationGroup(
                                        promotion: promotion,
                                      )));
                        },
                        child: Container(
                          height: 62,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 1,
                                offset: const Offset(0, 0),
                                blurStyle: BlurStyle.normal,
                                spreadRadius: 0.4,
                              ),
                            ],
                            // border: Border.all(
                            //     color: Colors.grey.withOpacity(0.1))),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!
                                          .qualificationgroup,
                                      // 'Qualification Group',
                                      style: subTitleTextStyle(),
                                    ),
                                    Text(promotion.qCode!,
                                        style: countHeading())
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.viewitems,
                                      style: subTitleTextStyle(),
                                    ),
                                    Transform.flip(
                                        flipX:
                                            selectedLocale?.languageCode == "en"
                                                ? false
                                                : true,
                                        child: const Icon(
                                            Icons.keyboard_arrow_right))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AssignmentGroup(
                                        promotion: promotion,
                                      )));
                        },
                        child: Container(
                          height: 62,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                blurRadius: 1,
                                offset: const Offset(0, 0),
                                blurStyle: BlurStyle.normal,
                                spreadRadius: 0.4,
                              ),
                            ],
                            // border: Border.all(
                            //     color: Colors.grey.withOpacity(0.1))),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!
                                          .assignmentgroup,
                                      style: subTitleTextStyle(),
                                    ),
                                    Text(promotion.aCode ?? '',
                                        style: countHeading())
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                        AppLocalizations.of(context)!.viewitems,
                                        //'View Items',
                                        style: subTitleTextStyle()),
                                    Transform.flip(
                                        flipX:
                                            selectedLocale?.languageCode == "en"
                                                ? false
                                                : true,
                                        child: const Icon(
                                            Icons.keyboard_arrow_right))
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: double.infinity,
                  height: 30,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.minquaqty,
                          //"Min Qua. Qty",
                          style: boxHeading(),
                        ),
                        Text(
                          AppLocalizations.of(context)!.maxquaqty,
                          //"Max Qua. Qty",
                          style: boxHeading(),
                        ),
                        Text(
                          AppLocalizations.of(context)!.assignmentgroup,
                          //"Ass. Qty",
                          style: boxHeading(),
                        ),
                      ],
                    ),
                  ),
                ),
                const PromotionDetailsList()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshPromotionDetailScreen(
      BuildContext context, PromotionHeaderModel model) async {
    context.read<QualificationGroupBloc>().add(const ClearGroupData());
    context.read<QualificationGroupBloc>().add(const GetGroupWiseDataEvent(
          id: '',
          mode: '',
          searchQuery: '',
        ));

    context.read<PromotionCustomerBloc>().add(const ClearOromotionCustomer());
    context
        .read<PromotionCustomerBloc>()
        .add(const GetPromotionCustomerEvent(id: '', searchQuery: ''));
  }
}
