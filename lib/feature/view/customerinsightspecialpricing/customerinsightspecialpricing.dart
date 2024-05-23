import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_in_model/cus_sp_price_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/widgets/insightspecialpricelist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomerInsightSpecialPricing extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const CustomerInsightSpecialPricing(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<CustomerInsightSpecialPricing> createState() =>
      _CustomerInsightSpecialPricingState();
}

final _cusSpPriceSearchCtrl = TextEditingController();
Timer? debounce;

class _CustomerInsightSpecialPricingState
    extends State<CustomerInsightSpecialPricing> {
  @override
  void initState() {
    _cusSpPriceSearchCtrl.clear();
    context.read<CusSpPriceBloc>().add(const ClearCusSpPriceHeaderEvent());
    context.read<CusSpPriceBloc>().add(
          GetCusSpPriceHeadersEvent(
            searchQuery: '',
            cuIN: CusSpPriceInModel(
                cusId: widget.customer.cusId,
                userId: widget.user.usrId,
                area: '',
                fromDate: widget.fromdatectrl.text,
                route: '',
                subArea: '',
                toDate: widget.todatectrl.text),
          ),
        );
    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    _cusSpPriceSearchCtrl.clear();
    context.read<CusSpPriceBloc>().add(const ClearCusSpPriceHeaderEvent());
    context.read<CusSpPriceBloc>().add(
          GetCusSpPriceHeadersEvent(
            searchQuery: '',
            cuIN: CusSpPriceInModel(
                cusId: widget.customer.cusId,
                userId: widget.user.usrId,
                area: '',
                fromDate: widget.fromdatectrl.text,
                route: '',
                subArea: '',
                toDate: widget.todatectrl.text),
          ),
        );
    await Future.delayed(const Duration(seconds: 2));
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
          "Special Pricing ",
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
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                      SizedBox(
                        // height: 55.h,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '${widget.customer.cusCode} - ',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff2C6B9E),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 200.w,
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
                                SizedBox(
                                  width: 150.w,
                                  child: Text(
                                    widget.customer.headerName ?? "",
                                    overflow: TextOverflow.ellipsis,
                                    style: kfontstyle(fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '${widget.customer.cusType} | ${widget.customer.className} | ${widget.customer.areaName} ',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    children: [
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: const [
                                BoxShadow(
                                    // ignore: use_full_hex_values_for_flutter_colors
                                    color: Color(0xff00000050),
                                    blurRadius: 0.4,
                                    spreadRadius: 0.4)
                              ]),
                          child: TextFormField(
                            controller: _cusSpPriceSearchCtrl,
                            onChanged: (value) {
                              if (debounce?.isActive ?? false)
                                debounce!.cancel();
                              debounce = Timer(
                                const Duration(
                                  milliseconds: 500,
                                ),
                                () async {
                                  context
                                      .read<CusSpPriceBloc>()
                                      .add(const ClearCusSpPriceHeaderEvent());
                                  context.read<CusSpPriceBloc>().add(
                                        GetCusSpPriceHeadersEvent(
                                          searchQuery: value.trim(),
                                          cuIN: CusSpPriceInModel(
                                              cusId: widget.customer.cusId,
                                              userId: widget.user.usrId,
                                              area: '',
                                              fromDate:
                                                  widget.fromdatectrl.text,
                                              route: '',
                                              subArea: '',
                                              toDate: widget.todatectrl.text),
                                        ),
                                      );
                                },
                              );
                            },
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.search,
                                  size: 20,
                                ),
                                suffix: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 5.h),
                                    Expanded(
                                      child: IconButton(
                                        onPressed: () {
                                          context.read<CusSpPriceBloc>().add(
                                              const ClearCusSpPriceHeaderEvent());
                                          _cusSpPriceSearchCtrl.clear();
                                          context.read<CusSpPriceBloc>().add(
                                                GetCusSpPriceHeadersEvent(
                                                  searchQuery: '',
                                                  cuIN: CusSpPriceInModel(
                                                      cusId:
                                                          widget.customer.cusId,
                                                      userId: widget.user.usrId,
                                                      area: '',
                                                      fromDate: widget
                                                          .fromdatectrl.text,
                                                      route: '',
                                                      subArea: '',
                                                      toDate: widget
                                                          .todatectrl.text),
                                                ),
                                              );
                                        },
                                        icon: Icon(
                                          Icons.close,
                                          size: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                hintText: "Search here..",
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
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(width: 05,),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                      child: Text(
                        "All ",
                        style: countHeading(),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20.0, right: 20, top: 0),
                      child: BlocBuilder<CusSpPriceBloc, CusSpPriceState>(
                        builder: (context, state) {
                          return state.when(
                            getCusSpPriceHeadersState: (headers) =>
                                headers == null
                                    ? Text(
                                        "0",
                                        style: countHeading(),
                                      )
                                    : Text(
                                        "${headers.length}",
                                        style: countHeading(),
                                      ),
                            cusSpPriceHeaderFailedState: () => Text(
                              "0",
                              style: countHeading(),
                            ),
                          );
                        },
                      ),
                    ),
                    // SizedBox(width: ,),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                const SizedBox(
                    // height: MediaQuery.of(context).size.height,
                    child: InsightSpecialPriceList()),
                SizedBox(
                  height: 8.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
