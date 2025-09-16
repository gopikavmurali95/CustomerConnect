// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_header_model/todays_delivery_header_model.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart';
import 'package:customer_connect/feature/view/todaysdelivery/widgets/todaysdeliverdetaillist.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:customer_connect/l10n/app_localizations.dart';

class TodaysDeliveryDetails extends StatefulWidget {
  final LoginUserModel user;
  final TodaysDeliveryHeaderModel todaysdelivery;
  const TodaysDeliveryDetails(
      {super.key, required this.todaysdelivery, required this.user});

  @override
  State<TodaysDeliveryDetails> createState() => _TodaysDeliveryDetailsState();
}

final _todaysDeliveryDetailsSearchCtrl = TextEditingController();
Timer? debounce;

class _TodaysDeliveryDetailsState extends State<TodaysDeliveryDetails> {
  @override
  void initState() {
    _todaysDeliveryDetailsSearchCtrl.clear();
    context
        .read<TodaysDeliveryDetailsBloc>()
        .add(const ClearTodasDeliveryDetails());
    context.read<TodaysDeliveryDetailsBloc>().add(GetTodaysDeliveryDetailsEvent(
        id: widget.todaysdelivery.id ?? '', searchQuery: ''));
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
          AppLocalizations.of(context)!.order_details,
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${widget.todaysdelivery.orderId}',
                              style: blueTextStyle()),
                          Row(
                            children: [
                              Text('${widget.todaysdelivery.cusCode} - ',
                                  style: subTitleTextStyle()),
                              Expanded(
                                child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    selectedLocale?.languageCode == "en"
                                        ? '${widget.todaysdelivery.cusName}'
                                        : widget.todaysdelivery.arcusName ?? '',
                                    style: subTitleTextStyle()),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('${widget.todaysdelivery.cusOutCode} - ',
                                  style: subTitleTextStyle()),
                              Expanded(
                                child: Text(
                                    selectedLocale?.languageCode == "en"
                                        ? '${widget.todaysdelivery.cusOutName}'
                                        : widget.todaysdelivery.arcusOutName ??
                                            '',
                                    overflow: TextOverflow.ellipsis,
                                    style: subTitleTextStyle()),
                              ),
                            ],
                          ),
                          Text(
                            '${widget.todaysdelivery.rotName} | ${widget.todaysdelivery.salesman} | ${widget.todaysdelivery.date} | ${widget.todaysdelivery.time}',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 14.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffe4f7e2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '${widget.todaysdelivery.status}',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 40,
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
                    child: TextFormField(
                      controller: _todaysDeliveryDetailsSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context
                                .read<TodaysDeliveryDetailsBloc>()
                                .add(const ClearTodasDeliveryDetails());
                            context.read<TodaysDeliveryDetailsBloc>().add(
                                GetTodaysDeliveryDetailsEvent(
                                    id: widget.todaysdelivery.id ?? '',
                                    searchQuery: value.trim()));
                          },
                        );
                      },
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
                          suffix: InkWell(
                            onTap: () {
                              _todaysDeliveryDetailsSearchCtrl.clear();
                              context
                                  .read<TodaysDeliveryDetailsBloc>()
                                  .add(const ClearTodasDeliveryDetails());
                              context.read<TodaysDeliveryDetailsBloc>().add(
                                  GetTodaysDeliveryDetailsEvent(
                                      id: widget.todaysdelivery.id ?? '',
                                      searchQuery: ''));
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.items),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(AppLocalizations.of(context)!.uom),
                      SizedBox(
                        width: 15.h,
                      ),
                      Text(AppLocalizations.of(context)!.qty),
                      /*  SizedBox(
                        width: 15.h,
                      ),
                      const Text('Del Qty'), */
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          Expanded(
              child: TodaysDeliveryDetailsList(
            delivery: widget.todaysdelivery,
          )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sub_total,
                      style: kfontstyle(fontSize: 12.sp),
                    ),
                    Text(
                      widget.todaysdelivery.subTotal ?? '',
                      style: kfontstyle(fontSize: 12.sp),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.vat,
                      style: kfontstyle(fontSize: 12.sp),
                    ),
                    Text(
                      widget.todaysdelivery.vat ?? '',
                      style: kfontstyle(fontSize: 12.sp),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        //height: MediaQuery.of(context).size.width / 1.8,
        height: 40.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.total_amount,
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                '${AppLocalizations.of(context)!.aed} ${widget.todaysdelivery.grandTotal}',
                style: TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
