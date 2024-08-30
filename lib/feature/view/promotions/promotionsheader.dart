import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/promotion_header_in_paras/promotion_header_in_paras.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart';
import 'package:customer_connect/feature/view/promotions/promotioncustomer.dart';
import 'package:customer_connect/feature/view/promotions/promotiondetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PromotionHeader extends StatefulWidget {
  final LoginUserModel user;
  const PromotionHeader({super.key, required this.user});

  @override
  State<PromotionHeader> createState() => _PromotionHeaderState();
}

final _promotionHeaderSearchCtrl = TextEditingController();
Timer? debounce;

class _PromotionHeaderState extends State<PromotionHeader> {
  @override
  void initState() {
    _promotionHeaderSearchCtrl.clear();
    context.read<PromotionHeaderBloc>().add(const ClearPromotionHeader());
    context.read<PromotionHeaderBloc>().add(GetPromotionHeaderEvent(
        promotionInparas: PromotionHeaderInParas(
            area: '',
            cusOutlet: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userId: widget.user.usrId),
        searchQuery: ''));
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
        leading: Transform.flip(
          // flipX: selectedLocale?.languageCode == "en" ? true : false,
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
          AppLocalizations.of(context)!.promotions,
          // "Promotions",
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
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
                height: 30.h,
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
                  controller: _promotionHeaderSearchCtrl,
                  onChanged: (value) {
                    if (debounce?.isActive ?? false) debounce!.cancel();
                    debounce = Timer(
                      const Duration(
                        milliseconds: 500,
                      ),
                      () async {
                        context
                            .read<PromotionHeaderBloc>()
                            .add(const ClearPromotionHeader());
                        context
                            .read<PromotionHeaderBloc>()
                            .add(GetPromotionHeaderEvent(
                                promotionInparas: PromotionHeaderInParas(
                                  area: '',
                                  cusOutlet: '',
                                  customer: '',
                                  fromDate:
                                      '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                  route: '',
                                  subArea: '',
                                  toDate:
                                      '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                  userId: widget.user.usrId,
                                ),
                                searchQuery: value.trim()));
                      },
                    );
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      suffix: InkWell(
                        onTap: () {
                          _promotionHeaderSearchCtrl.clear();
                          context
                              .read<PromotionHeaderBloc>()
                              .add(const ClearPromotionHeader());
                          context.read<PromotionHeaderBloc>().add(
                              GetPromotionHeaderEvent(
                                  promotionInparas: PromotionHeaderInParas(
                                      area: '',
                                      cusOutlet: '',
                                      customer: '',
                                      fromDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      route: '',
                                      subArea: '',
                                      toDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      userId: widget.user.usrId),
                                  searchQuery: ''));
                        },
                        child: const Icon(
                          Icons.close,
                          size: 14,
                        ),
                      ),
                      hintText: AppLocalizations.of(context)!.searchhere,
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.allpromotions,
                  // 'All promotions',
                  style: countHeading(),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: BlocBuilder<PromotionHeaderBloc, PromotionHeaderState>(
                    builder: (context, state) {
                      return Text(
                        state.when(
                          getPromotionsHeader: (promotion) => promotion == null
                              ? "0"
                              : promotion.length.toString(),
                          promotionHeaderFailed: () => '',
                        ),
                        style: countHeading(),
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: BlocBuilder<PromotionHeaderBloc, PromotionHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getPromotionsHeader: (promoheader) => promoheader == null
                        ? ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ShimmerContainers(
                                height: 60.h, width: double.infinity),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: 10)
                        : ListView.builder(
                            // physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: promoheader.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      context
                                          .read<PromotionCustomerBloc>()
                                          .add(const ClearOromotionCustomer());
                                      context.read<PromotionCustomerBloc>().add(
                                          GetPromotionCustomerEvent(
                                              id: promoheader[index].qid ?? '',
                                              searchQuery: ''));
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PromotionCustomer(
                                                    promotion:
                                                        promoheader[index],
                                                  )));
                                    },
                                    child: SizedBox(
                                      //color: Colors.red,
                                      //height: 60,
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                backgroundColor:
                                                    const Color(0xffB3DAF7),
                                                child: Center(
                                                  child: Text(
                                                    promoheader[index].pName ==
                                                            null
                                                        ? 'D'
                                                        : promoheader[index]
                                                            .pName!
                                                            .split('')
                                                            .toList()[0],
                                                    style: TextStyle(
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15.w,
                                              ),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: 200.w,
                                                    child: Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              "en"
                                                          ? promoheader[index]
                                                                  .prmName ??
                                                              ''
                                                          : promoheader[index]
                                                                  .arPrmName ??
                                                              '',
                                                      //'${promoheader[index].arPname}',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 2,
                                                      style: blueTextStyle(),
                                                    ),
                                                  ),
                                                  Text(
                                                    '${promoheader[index].dateRange}',
                                                    style: subTextStyle(),
                                                  ),
                                                  Text(
                                                    '${selectedLocale?.languageCode == "en" ? promoheader[index].pName ?? '' : promoheader[index].arPname ?? ''}| ${promoheader[index].pCode}',
                                                    style: subTextStyle(),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              context
                                                  .read<PromotionDetailsBloc>()
                                                  .add(
                                                      const ClearPromotionDetails());
                                              context
                                                  .read<PromotionDetailsBloc>()
                                                  .add(GetPromotionDetailsEvent(
                                                      id: promoheader[index]
                                                              .aid ??
                                                          ''));
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          PromotionDetails(
                                                            promotion:
                                                                promoheader[
                                                                    index],
                                                          )));
                                            },
                                            icon: SizedBox(
                                              height: 20.h,
                                              // width: 65.w,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Text(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .details,
                                                    //'Details',
                                                    style: TextStyle(
                                                        fontSize: 10.sp),
                                                  ),
                                                  SizedBox(
                                                    width: 5.w,
                                                  ),
                                                  Transform.flip(
                                                    flipX: selectedLocale
                                                                ?.languageCode ==
                                                            "en"
                                                        ? false
                                                        : true,
                                                    child: const Icon(
                                                      Icons
                                                          .keyboard_arrow_right,
                                                      size: 18,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.grey.shade300,
                                  )
                                ],
                              );
                            }),
                    promotionHeaderFailed: () => SizedBox(
                      height: MediaQuery.of(context).size.height / 1.5,
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!.noDataAvailable,
                          // 'No Data Available',
                          style: kfontstyle(),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefreshPromotionHeaderScreen(
      BuildContext context, LoginUserModel model) async {
    context.read<PromotionHeaderBloc>().add(const ClearPromotionHeader());
    context.read<PromotionHeaderBloc>().add(GetPromotionHeaderEvent(
          searchQuery: '',
          promotionInparas: PromotionHeaderInParas(
              area: '',
              cusOutlet: '',
              customer: '',
              fromDate:
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
              route: '',
              subArea: '',
              toDate:
                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
              userId: widget.user.usrId),
        ));
  }
}
