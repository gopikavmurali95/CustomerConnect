import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/cus_promo_in_model/cus_promo_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_header/cus_promotion_header.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'custinsightpromodetails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerInsightPromotion extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const CustomerInsightPromotion(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<CustomerInsightPromotion> createState() =>
      _CustomerInsightPromotionState();
}

final _cusPromoSearchCtrl = TextEditingController();
Timer? debounce;

class _CustomerInsightPromotionState extends State<CustomerInsightPromotion> {
  @override
  void initState() {
    _cusPromoSearchCtrl.clear();
    context.read<CusPromotionsHeaderBloc>().add(const ClearCusPromoEvent());
    context.read<CusPromotionsHeaderBloc>().add(
          GetCusPromoHeaderEvent(
            searchQuery: '',
            cusIn: CusPromoInModel(
              cusId: widget.customer.cusId,
              area: '',
              fromDate: widget.fromdatectrl.text,
              route: '',
              subArea: '',
              toDate: widget.todatectrl.text,
              userId: widget.user.usrId,
            ),
          ),
        );
    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    _cusPromoSearchCtrl.clear();
    context.read<CusPromotionsHeaderBloc>().add(const ClearCusPromoEvent());
    context.read<CusPromotionsHeaderBloc>().add(
          GetCusPromoHeaderEvent(
            searchQuery: '',
            cusIn: CusPromoInModel(
              cusId: widget.customer.cusId,
              area: '',
              fromDate: widget.fromdatectrl.text,
              route: '',
              subArea: '',
              toDate: widget.todatectrl.text,
              userId: widget.user.usrId,
            ),
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
          AppLocalizations.of(context)!.promotions,
          style: appHeading(),
        ),
        actions: [
          /*  Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ), */
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CustInsightPromotionDetails(
                      customer: widget.customer,
                      header: CusPromotionHeader(id: '1'),
                      user: widget.user,
                    ),
                  ),
                );
              },
              icon: SvgPicture.asset(
                "assets/svg/filter.svg",
                height: 20,
                fit: BoxFit.scaleDown,
              ))
        ],
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
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
                      SizedBox(
                        // height: 55.h,
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
                                SizedBox(
                                  width: 200.w,
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    selectedLocale?.languageCode == 'en'
                                        ? widget.customer.cusName ?? ""
                                        : widget.customer.arcusName ?? '',
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
                                    selectedLocale?.languageCode == 'en'
                                        ? widget.customer.headerName ?? ""
                                        : widget.customer.arheaderName ?? '',
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
                                    style: DefaultTextStyle.of(context)
                                        .style
                                        .copyWith(
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
                                        text: selectedLocale?.languageCode ==
                                                'en'
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
                                  style: DefaultTextStyle.of(context)
                                      .style
                                      .copyWith(
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
                              '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName ?? ''} ',
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
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, bottom: 0, top: 10),
                  child: Container(
                      height: 35.h,
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
                        controller: _cusPromoSearchCtrl,
                        onChanged: (value) {
                          if (debounce?.isActive ?? false) debounce!.cancel();
                          debounce = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () async {
                              context
                                  .read<CusPromotionsHeaderBloc>()
                                  .add(const ClearCusPromoEvent());

                              context.read<CusPromotionsHeaderBloc>().add(
                                    GetCusPromoHeaderEvent(
                                      searchQuery: value.trim(),
                                      cusIn: CusPromoInModel(
                                        cusId: widget.customer.cusId,
                                        area: '',
                                        fromDate: widget.fromdatectrl.text,
                                        route: '',
                                        subArea: '',
                                        toDate: widget.todatectrl.text,
                                        userId: widget.user.usrId,
                                      ),
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
                                      _cusPromoSearchCtrl.clear();
                                      context
                                          .read<CusPromotionsHeaderBloc>()
                                          .add(const ClearCusPromoEvent());

                                      context
                                          .read<CusPromotionsHeaderBloc>()
                                          .add(
                                            GetCusPromoHeaderEvent(
                                              searchQuery: '',
                                              cusIn: CusPromoInModel(
                                                cusId: widget.customer.cusId,
                                                area: '',
                                                fromDate:
                                                    widget.fromdatectrl.text,
                                                route: '',
                                                subArea: '',
                                                toDate: widget.todatectrl.text,
                                                userId: widget.user.usrId,
                                              ),
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
                            hintText:
                                "${AppLocalizations.of(context)!.searchHere}..",
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
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.allpromotions,
                        style: countHeading(),
                      ),
                      BlocBuilder<CusPromotionsHeaderBloc,
                          CusPromotionsHeaderState>(
                        builder: (context, state) {
                          return Text(
                            state.when(
                              getCusPromotionsHeaderState: (headers) =>
                                  headers == null ? '0' : "${headers.length}",
                              cusPromotionHeaderFailedState: () => '0',
                            ),
                            style: countHeading(),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  // height: MediaQuery.of(context).size.height,
                  child: BlocBuilder<CusPromotionsHeaderBloc,
                      CusPromotionsHeaderState>(
                    builder: (context, state) {
                      return state.when(
                        getCusPromotionsHeaderState: (headers) => headers ==
                                null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      ShimmerContainers(
                                    height: 60.h,
                                    width: double.infinity,
                                  ),
                                  itemCount: 10,
                                ),
                              )
                            : headers.isEmpty
                                ? Padding(
                                    padding: const EdgeInsets.only(top: 250),
                                    child: Text(
                                      AppLocalizations.of(context)!.noDataFound,
                                      style: kfontstyle(),
                                    ),
                                  )
                                : ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: headers.length,
                                    itemBuilder: (context, index) {
                                      return Column(
                                        children: [
                                          SizedBox(
                                            //color: Colors.red,
                                            height: 50,
                                            width: double.infinity,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15.0, right: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  SizedBox(
                                                    child: Row(
                                                      children: [
                                                        CircleAvatar(
                                                          backgroundColor:
                                                              const Color(
                                                                  0xffB3DAF7),
                                                          child: Center(
                                                            child: Text(
                                                              headers[index]
                                                                  .pName!
                                                                  .split('')
                                                                  .toList()[0],
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      14.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 15.w,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            /* Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            const PromotionCustomer())); */
                                                          },
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                selectedLocale?.languageCode ==
                                                                        "en"
                                                                    ? headers[index]
                                                                            .pName ??
                                                                        ''
                                                                    : headers[index]
                                                                            .arPName ??
                                                                        '',
                                                                style:
                                                                    blueTextStyle(),
                                                              ),
                                                              Text(
                                                                '${headers[index].dateRange}',
                                                                style:
                                                                    subTextStyle(),
                                                              ),
                                                              Text(
                                                                headers[index]
                                                                        .pCode ??
                                                                    '',
                                                                style:
                                                                    subTextStyle(),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      /* Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                   PromotionDetails(promotion: headers[index],))); */
                                                    },
                                                    child: Row(
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        CustInsightPromotionDetails(
                                                                  customer: widget
                                                                      .customer,
                                                                  header:
                                                                      headers[
                                                                          index],
                                                                  user: widget
                                                                      .user,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            AppLocalizations.of(
                                                                    context)!
                                                                .details,
                                                            style: TextStyle(
                                                                fontSize:
                                                                    10.sp),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        const Icon(
                                                          Icons
                                                              .keyboard_arrow_right,
                                                          size: 18,
                                                        )
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          const Divider()
                                        ],
                                      );
                                    }),
                        cusPromotionHeaderFailedState: () => Padding(
                          padding: const EdgeInsets.only(top: 250),
                          child: Text(
                            AppLocalizations.of(context)!.noDataAvailable,
                            style: kfontstyle(),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
