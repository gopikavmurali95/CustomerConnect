import 'dart:async';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_model/special_price_header_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_outparas/special_price_header_outparas.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text(
          "Special Pricing",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(200, 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 10),
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SpecialPricing(
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
                        // onTap: () {
                        //   Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (context) =>
                        //           const PromotionDetails()));
                        // },
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SpecialPricingCustomer(
                                              user: widget.user,
                                            )));
                              },
                              child: Text(
                                'Customer',
                                style: TextStyle(fontSize: 10.sp),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.only(bottom: 10),
              //   height: 60,
              //   color: Colors.white,
              //   child: ListTile(
              //     onTap: () {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //     builder: (context) => const LoadDetailPending(),
              //       //   ),
              //       // );
              //     },
              //     titleAlignment: ListTileTitleAlignment.center,
              //     minVerticalPadding:5,
              //     minLeadingWidth: 50,
              //     //titleAlignment:ListTileTitleAlignment.center,
              //     horizontalTitleGap: 10,
              //     leading: Padding(
              //       padding: const EdgeInsets.only(bottom:5.0,),
              //       child: CircleAvatar(
              //         radius: 30,
              //         backgroundColor: const Color(0xffA4C8E9),
              //         child: Image.asset(
              //           "assets/images/listicon.png",
              //           height: 20,
              //         ),
              //       ),
              //     ),
              //     title: Text(
              //       "Special Pricing 0${1}",
              //       style: blueTextStyle(),
              //     ),
              //     subtitle: Padding(
              //         padding: const EdgeInsets.only(bottom: 10.0,),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text("21 Feb 2021 to 24 Feb 2024 ",style:subTitleTextStyle(),),
              //             Text("PR12001",style: subTitleTextStyle(),)
              //           ],
              //         )
              //     ),
              //     trailing: Text("Customers >",style: TextStyle(
              //         fontSize: 10,color: Colors.grey
              //     ),),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 5, left: 15.0, right: 15, bottom: 10),
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
                          hintText: "Search Items",
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
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 30,
            color: Colors.grey.shade200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 110),
                  child: Text(
                    "Items",
                    style: boxHeading(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42),
                  child: Text(
                    "UOM",
                    style: boxHeading(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Std Price",
                    style: boxHeading(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Spcl Price",
                    style: boxHeading(),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<SpecialPriceDetailsBloc, SpecialPriceDetailsState>(
            builder: (context, state) {
              return state.when(
                getSpecialPriceDetailsState: (spPrice) => spPrice == null
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  ShimmerContainers(
                                      height: 60.h, width: double.infinity),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: 10),
                        ),
                      )
                    : Expanded(
                        child: ListView.separated(
                          itemCount: spPrice.length,
                          // physics: const NeverScrollableScrollPhysics(),
                          // shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, top: 2),
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
                                            Text(spPrice[index].prdCode ?? '',
                                                style: loadTextStyle()),
                                            Text(
                                              spPrice[index].prdName ?? '',
                                              style: subTitleTextStyle(),
                                            ),
                                            Text(
                                              spPrice[index].prdDescription ??
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
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          spPrice[index].uom ?? '',
                                          style: subTitleTextStyle(),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 2.0),
                                      child: Column(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            spPrice[index].stdPrice ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            spPrice[index].stdPrice ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, right: 20.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            spPrice[index].specialPrice ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            spPrice[index].specialPrice ?? '',
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
                          separatorBuilder: (BuildContext context, int index) {
                            return const Padding(
                              padding: EdgeInsets.only(left: 0.0, right: 0),
                              child: Divider(),
                            );
                          },
                        ),
                      ),
                specialPriceDetailsFailedState: () => Center(
                  child: Text(
                    'NoData Available',
                    style: kfontstyle(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
