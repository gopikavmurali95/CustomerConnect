import 'dart:async';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_outparas/special_price_header_outparas.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../constants/fonts.dart';
import '../specialpricingcustomer.dart';

class SpecialPricing extends StatefulWidget {
  final LoginUserModel user;
  final SpecialPriceHeaderOutparas spPrice;
  const SpecialPricing({super.key, required this.user, required this.spPrice});

  @override
  State<SpecialPricing> createState() => _SpecialPricingState();
}

final _spPriceSearchCtrl = TextEditingController();
Timer? debounce;

class _SpecialPricingState extends State<SpecialPricing> {
  @override
  void initState() {
    _spPriceSearchCtrl.clear();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.2,
        leading: Transform.flip(
           flipX: selectedLocale?.languageCode == "en" ? false : true,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_rounded),
          ),
        ),
        title: Text(
            AppLocalizations.of(context)!.specialpricing,
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(200, 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: SizedBox(
                  //color: Colors.red,
                  height: 60,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xffB3DAF7),
                              child: Center(
                                child: Text(
                                  widget.spPrice.prhName!.split('').toList()[0],
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
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SpecialPricingCustomer(
                                              user: widget.user,
                                              spPrice: widget.spPrice,
                                            )));
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 190.w,
                                    child: Text(
                                      widget.spPrice.prhName ?? '',
                                      overflow: TextOverflow.ellipsis,
                                      style: blueTextStyle(),
                                    ),
                                  ),
                                  Text(
                                    '${widget.spPrice.startDate} To ${widget.spPrice.endDate}',
                                    style: subTextStyle(),
                                  ),
                                  Text(
                                    widget.spPrice.prhCode ?? '',
                                    style: subTextStyle(),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SpecialPricingCustomer(
                                        user: widget.user,
                                        spPrice: widget.spPrice,
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
                               flipX: selectedLocale?.languageCode == "en" ? false : true,
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
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 10.0, right: 10, bottom: 10),
                child: Container(
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
                      controller: _spPriceSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context
                                .read<SpecialPriceDetailsBloc>()
                                .add(const ClearSpecialriceDetailsEvent());
                            context.read<SpecialPriceDetailsBloc>().add(
                                GetSpecialPriceDetailsEvent(
                                    prhID: widget.spPrice.prhId ?? '',
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
                              _spPriceSearchCtrl.clear();
                              context
                                  .read<SpecialPriceDetailsBloc>()
                                  .add(const ClearSpecialriceDetailsEvent());
                              context.read<SpecialPriceDetailsBloc>().add(
                                  GetSpecialPriceDetailsEvent(
                                      prhID: widget.spPrice.prhId ?? '',
                                      searchQuery: ''));
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
                          hintText:   AppLocalizations.of(context)!.searchproduct,
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
            ],
          ),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () =>
            _onRefreshSpecialPricingDetailScreen(context, widget.user),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  color: Colors.grey.shade200,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Text(
                             AppLocalizations.of(context)!.items,
                            style: boxHeading(),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                             AppLocalizations.of(context)!.uom,
                            style: boxHeading(),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                              AppLocalizations.of(context)!.stdPrice,
                            // "std Price",
                            style: boxHeading(),
                          ),
                        ),
                        Flexible(
                          flex: 0,
                          fit: FlexFit.tight,
                          child: Text(
                              AppLocalizations.of(context)!.spclprice,
                            // "Spcl Price",
                            style: boxHeading(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<SpecialPriceDetailsBloc, SpecialPriceDetailsState>(
                  builder: (context, state) {
                    return state.when(
                      getSpecialPriceDetailsState: (spPrice) => spPrice == null
                          ? SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        ShimmerContainers(
                                            height: 60.h,
                                            width: double.infinity),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                    itemCount: 10),
                              ),
                            )
                          // scrolling enabled
                          : SizedBox(
                              // height: MediaQuery.of(context).size.height,
                              child: ListView.separated(
                                itemCount: spPrice.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0, top: 2, right: 25),
                                            child: Container(
                                              //height: 55,
                                              width: 180,
                                              color: Colors.white,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      spPrice[index].prdCode ??
                                                          '',
                                                      style: loadTextStyle()),
                                                  Text(
                                                    spPrice[index].prdName ??
                                                        '',
                                                    style: subTitleTextStyle(),
                                                  ),
                                                  Text(
                                                    spPrice[index]
                                                            .prdDescription ??
                                                        '',
                                                    style: subTitleTextStyle(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                spPrice[index].uom ?? '',
                                                style: subTitleTextStyle(),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.end,
                                                  spPrice[index].stdPrice ?? '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5, right: 10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  textAlign: TextAlign.end,
                                                  spPrice[index].specialPrice ??
                                                      '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ],
                                            ),
                                          ),
                                          //  SizedBox(width: 0,)
                                        ],
                                      ),
                                      //  Divider(),
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const Padding(
                                    padding:
                                        EdgeInsets.only(left: 0.0, right: 0),
                                    child: Divider(),
                                  );
                                },
                              ),
                            ),
                      specialPriceDetailsFailedState: () => SizedBox(
                        height: MediaQuery.of(context).size.height / 1.4,
                        child: Center(
                          child: Text(
                             AppLocalizations.of(context)!.noDataAvailable,
                            style: kfontstyle(),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshSpecialPricingDetailScreen(
      BuildContext context, LoginUserModel model) async {
    context
        .read<SpecialPriceDetailsBloc>()
        .add(const ClearSpecialriceDetailsEvent());
    context.read<SpecialPriceDetailsBloc>().add(GetSpecialPriceDetailsEvent(
        prhID: widget.spPrice.prhId ?? '', searchQuery: ''));
  }
}
