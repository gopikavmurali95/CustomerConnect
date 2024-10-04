import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_header/cus_promotion_header.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart';
import 'package:customer_connect/feature/view/cusinsighassignmentgroup/cusinsighassignmentgroup.dart';
import 'package:customer_connect/feature/view/cusinsightqualificationgroup/cusinsightqualificationgroup.dart';
import 'package:customer_connect/feature/view/custinsightpromotion/widget/cusinsightpromotiondetlist.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustInsightPromotionDetails extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final CusPromotionHeader header;
  const CustInsightPromotionDetails(
      {super.key,
      required this.user,
      required this.customer,
      required this.header});

  @override
  State<CustInsightPromotionDetails> createState() =>
      _CustInsightPromotionDetailsState();
}

class _CustInsightPromotionDetailsState
    extends State<CustInsightPromotionDetails> {
  @override
  void initState() {
    context.read<CusPromoDetailBloc>().add(const ClearCusPromoDetailEvent());
    context
        .read<CusPromoDetailBloc>()
        .add(GetCusPromoDetailEvent(iD: widget.header.id ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.promotiondetails,
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /* Row(
                        children: [
                          Text(
                            '${widget.customer.cusCode} - ',
                            style: kfontstyle(
                              fontSize: 12.sp,
                              color: const Color(0xff2C6B9E),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              widget.customer.cusName ?? "",
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.customer.headerCode} - ',
                            style: kfontstyle(
                                fontSize: 11.sp,
                                color: const Color(0xff413434)),
                          ),
                          Expanded(
                            child: Text(
                              widget.customer.headerName ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                          ),
                        ],
                      ), */
                      SizedBox(
                        width: 300.w,
                        child: RichText(
                          text: TextSpan(
                              style:
                                  DefaultTextStyle.of(context).style.copyWith(
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                      ),
                              children: [
                                TextSpan(
                                  text: '${widget.customer.cusCode} - ',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2C6B9E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: selectedLocale?.languageCode == 'en'
                                      ? widget.customer.cusName ?? ""
                                      : widget.customer.arcusName ?? '',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),
                                )
                              ]),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none,
                                ),
                            children: [
                              TextSpan(
                                text: '${widget.customer.headerCode} - ',
                                style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff413434)),
                              ),
                              TextSpan(
                                text: selectedLocale?.languageCode == 'en'
                                    ? widget.customer.headerName ?? ""
                                    : widget.customer.arheaderName ?? '',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              )
                            ]),
                      ),
                      Text(
                        '${widget.customer.cusType} | ${widget.customer.className} | ${widget.customer.areaName} ',
                        style: kfontstyle(fontSize: 10.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                SizedBox(
                  //color: Colors.red,
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
                                  widget.header.pName!.split('').toList()[0],
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  selectedLocale?.languageCode == "en"
                                      ? widget.header.pName ?? ''
                                      : widget.header.arPName ?? '',
                                  style: blueTextStyle(),
                                ),
                                Text(
                                  widget.header.dateRange!,
                                  style: subTextStyle(),
                                ),
                                Text(
                                  widget.header.pCode!,
                                  style: subTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<CustomerInsightGroupBloc>()
                        .add(const CustomerInsightGroupEvent.clearGroupData());
                    context.read<CustomerInsightGroupBloc>().add(
                        CustomerInsightGroupEvent.getGroupWiseDataEvent(
                            id: widget.header.qid ?? '',
                            mode: '',
                            searchQuery: ''));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CusInsightQualificationGroup(
                                  header: widget.header,
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
                                style: kfontstyle(fontSize: 11.sp),
                              ),
                              Text(
                                widget.header.qCode ?? '',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.viewitems,
                                style: kfontstyle(fontSize: 11.sp),
                              ),
                              const Icon(Icons.keyboard_arrow_right)
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
                    context
                        .read<CustomerInsightGroupBloc>()
                        .add(const CustomerInsightGroupEvent.clearGroupData());
                    context.read<CustomerInsightGroupBloc>().add(
                        CustomerInsightGroupEvent.getGroupWiseDataEvent(
                            id: widget.header.aid!,
                            mode: 'A',
                            searchQuery: ''));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CusInsightAssignmentGroup(
                                  header: widget.header,
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
                        )
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
                                AppLocalizations.of(context)!.assignmentgroup,
                                style: kfontstyle(fontSize: 11.sp),
                              ),
                              Text(
                                widget.header.aCode ?? '',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.viewitems,
                                style: kfontstyle(fontSize: 11.sp),
                              ),
                              const Icon(Icons.keyboard_arrow_right)
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 8,
                    fit: FlexFit.tight,
                    child: Text(
                      AppLocalizations.of(context)!.minquaqty,
                      style: boxHeading(),
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    fit: FlexFit.tight,
                    child: Text(
                      AppLocalizations.of(context)!.maxquaqty,
                      style: boxHeading(),
                    ),
                  ),
                  Flexible(
                    flex: 4,
                    fit: FlexFit.tight,
                    child: Text(
                      AppLocalizations.of(context)!.assigmntqty,
                      style: boxHeading(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CusInsightPromotionDetaoilsList(),
            ),
          )
        ],
      ),
    );
  }
}
