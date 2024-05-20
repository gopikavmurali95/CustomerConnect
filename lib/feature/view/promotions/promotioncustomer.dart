import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/view/promotions/promotiondetails.dart';
import 'package:customer_connect/feature/view/promotions/widget/promotioncustomerlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionCustomer extends StatefulWidget {
  const PromotionCustomer({super.key});

  @override
  State<PromotionCustomer> createState() => _PromotionCustomerState();
}

final _promotionCustomerSearchCtrl = TextEditingController();
Timer? debounce;

class _PromotionCustomerState extends State<PromotionCustomer> {
  @override
  void initState() {
    _promotionCustomerSearchCtrl.clear();
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
          "Promotion Customers",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: Size(100, 120.h),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    context
                        .read<PromotionDetailsBloc>()
                        .add(const ClearPromotionDetails());
                    context
                        .read<PromotionDetailsBloc>()
                        .add(const GetPromotionDetailsEvent(id: "1"));
                    /*Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  PromotionDetails()));*/
                  },
                  child: SizedBox(
                    height: 75,
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
                                    'FG',
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
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Free Good Promotion',
                                    style: blueTextStyle(),
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
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Details',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
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
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: Color(0xff00000050),
                              blurRadius: 0.4,
                              spreadRadius: 0.4)
                        ]),
                    child: TextFormField(
                      controller: _promotionCustomerSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context
                                .read<PromotionCustomerBloc>()
                                .add(const ClearOromotionCustomer());
                            context.read<PromotionCustomerBloc>().add(
                                GetPromotionCustomerEvent(
                                    id: '1', searchQuery: value.trim()));
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
                              _promotionCustomerSearchCtrl.clear();
                              context
                                  .read<PromotionCustomerBloc>()
                                  .add(const ClearOromotionCustomer());
                              context.read<PromotionCustomerBloc>().add(
                                  const GetPromotionCustomerEvent(
                                      id: "1", searchQuery: ''));
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
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
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Assigned Customers',
                      style: countHeading(),
                    ),
                    BlocBuilder<PromotionCustomerBloc, PromotionCustomerState>(
                      builder: (context, state) {
                        return Text(
                          state.when(
                            getPromotionCustomer: (promotioncust) =>
                                promotioncust == null
                                    ? '0'
                                    : promotioncust.length.toString(),
                            promotionCustomerFailed: () => '0',
                          ),
                          style: countHeading(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const PromotionCustomerList(),
            ],
          ),
        ),
      ),
    );
  }
}
