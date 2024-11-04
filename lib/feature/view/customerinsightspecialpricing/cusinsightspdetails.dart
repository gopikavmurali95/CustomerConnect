import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_model/cus_sp_price_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/widgets/cusinsightspdetailslist.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerInsightSpecialPriceDetails extends StatelessWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final CusSpPriceModel spPriceHeader;
  const CustomerInsightSpecialPriceDetails({
    super.key,
    required this.user,
    required this.customer,
    required this.spPriceHeader,
  });

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
          AppLocalizations.of(context)!.specialpricing,
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 15.w,
              ),
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
                    SizedBox(
                      width: 300.w,
                      child: RichText(
                        text: TextSpan(
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none,
                                ),
                            children: [
                              TextSpan(
                                text: '${customer.cusCode} - ',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: selectedLocale?.languageCode == 'en'
                                    ? customer.cusName ?? ""
                                    : customer.arcusName ?? '',
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
                              text: '${customer.headerCode} - ',
                              style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff413434)),
                            ),
                            TextSpan(
                              text: selectedLocale?.languageCode == 'en'
                                  ? customer.headerName ?? ""
                                  : customer.arheaderName ?? '',
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff413434)),
                            )
                          ]),
                    ),
                    Text(
                      '${customer.cusType} | ${customer.className} | ${customer.areaName} ',
                      style: kfontstyle(fontSize: 10.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              color: Colors.grey.shade300,
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            //color: Colors.red,
            height: 50,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 15.w,
                      ),
                      CircleAvatar(
                        backgroundColor: const Color(0xffB3DAF7),
                        child: Center(
                          child: Text(
                            spPriceHeader.prhName!.split('').toList()[0],
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
                            selectedLocale?.languageCode == 'en'
                                ? spPriceHeader.prhName ?? ''
                                : spPriceHeader.arPrhName ?? '',
                            style: blueTextStyle(),
                          ),
                          Text(
                            '${spPriceHeader.startDate} to ${spPriceHeader.endDate}',
                            style: subTextStyle(),
                          ),
                          Text(
                            spPriceHeader.prhCode ?? '',
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
            height: 5.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
                height: 35.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff00000050),
                          blurRadius: 0.4,
                          spreadRadius: 0.4)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      hintText: AppLocalizations.of(context)!.searchHere,
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      isDense: true,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  maxLength: 20,
                  // controller: _locationNameTextController,
                )),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.items,
                    style: boxHeading(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 30.h,
                      ),
                      // Text(
                      //   AppLocalizations.of(context)!.uom,
                      //   style: boxHeading(),
                      // ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!.spclprice,
                        style: boxHeading(),
                      ),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(
                        "Rtn Price",
                        //AppLocalizations.of(context)!.spclprice,
                        style: boxHeading(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const CustomerInsightSpecialPriceDetailsList()
        ],
      ),
    );
  }
}
