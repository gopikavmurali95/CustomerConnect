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
// import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

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
            fromDate: '01-01-2023',
            route: '',
            subArea: '',
            toDate: '29-03-2024',
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
          "Promotions ",
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
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Container(
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
                            .add(GetPromotionHeaderEvent(
                                promotionInparas: PromotionHeaderInParas(
                                  area: '',
                                  cusOutlet: '',
                                  customer: '',
                                  fromDate: '01-01-2023',
                                  route: '',
                                  subArea: '',
                                  toDate: '01-05-2024',
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
                      hintText: "Search promotions",
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
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
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
                      : Column(
                          children: [
                            SizedBox(
                              height: 25.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'All promotions',
                                  style: countHeading(),
                                ),
                                Text(
                                  '7',
                                  style: countHeading(),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 7,
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        //color: Colors.red,
                                        height: 60,
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundColor:
                                                        const Color(0xffB3DAF7),
                                                    child: Center(
                                                      child: Text(
                                                        'AL',
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 15.w,
                                                  ),
                                                  GestureDetector(
                                                    onTap: () {
                                                      context
                                                          .read<
                                                              PromotionCustomerBloc>()
                                                          .add(
                                                              const ClearOromotionCustomer());
                                                      context
                                                          .read<
                                                              PromotionCustomerBloc>()
                                                          .add(
                                                              const GetPromotionCustomerEvent(
                                                                  id: '1',
                                                                  searchQuery:
                                                                      ''));
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const PromotionCustomer()));
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
                                                          'Amount Off Line item',
                                                          style:
                                                              blueTextStyle(),
                                                        ),
                                                        Text(
                                                          '21 Feb 2021 to 24 Feb 2021',
                                                          style: subTextStyle(),
                                                        ),
                                                        Text(
                                                          'PR10021',
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
                                                context
                                                    .read<
                                                        PromotionDetailsBloc>()
                                                    .add(
                                                        const ClearPromotionDetails());
                                                context
                                                    .read<
                                                        PromotionDetailsBloc>()
                                                    .add(
                                                        const GetPromotionDetailsEvent(
                                                            id: '1'));
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const PromotionDetails()));
                                              },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Details',
                                                    style: TextStyle(
                                                        fontSize: 10.sp),
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
                                      Divider(
                                        color: Colors.grey.shade300,
                                      )
                                    ],
                                  );
                                })
                          ],
                        ),
                  promotionHeaderFailed: () => SizedBox(
                    height: 500.h,
                    child: Center(
                      child: Text(
                        'No Date Available',
                        style: kfontstyle(),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
