import 'dart:async';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart';
import 'package:customer_connect/feature/view/SpecialPricing/Widgets/spcustomerlist.dart';
import 'package:customer_connect/feature/view/SpecialPricing/Widgets/specialpricing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/fonts.dart';

class SpecialPricingCustomer extends StatefulWidget {
  final LoginUserModel user;
  const SpecialPricingCustomer({super.key, required this.user});

  @override
  State<SpecialPricingCustomer> createState() => _SpecialPricingCustomerState();
}

final _spCustomergSearchCtrl = TextEditingController();
Timer? debounce;

class _SpecialPricingCustomerState extends State<SpecialPricingCustomer> {
  @override
  void initState() {
    _spCustomergSearchCtrl.clear();
    context
        .read<SpecialPriceCustomersBloc>()
        .add(const ClearSpecialPriceCustomer());
    context.read<SpecialPriceCustomersBloc>().add(GetSpecialPriceCustomersEvent(
        userID: widget.user.usrId!,
        fromDate: '01-01-2023',
        todate: '01-05-2024',
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
          "Special Pricing Customers",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: Size(100, 100.h),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 15,
            ),
            child: Column(
              children: [
                SizedBox(
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
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Special Pricing 01',
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SpecialPricing(
                                    user: widget.user,
                                  ),
                                ),
                              );
                            },
                            child: Text(
                              'Details',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SpecialPricing(
                                    user: widget.user,
                                  ),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_right,
                              size: 18,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 0.0, right: 0, bottom: 0),
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
                        controller: _spCustomergSearchCtrl,
                        onChanged: (value) {
                          if (debounce?.isActive ?? false) debounce!.cancel();
                          debounce = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () async {
                              context
                                  .read<SpecialPriceCustomersBloc>()
                                  .add(const ClearSpecialPriceCustomer());
                              context.read<SpecialPriceCustomersBloc>().add(
                                  GetSpecialPriceCustomersEvent(
                                      userID: widget.user.usrId!,
                                      fromDate: '01-01-2023',
                                      todate: '01-05-2024',
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
                                _spCustomergSearchCtrl.clear();
                                context
                                    .read<SpecialPriceCustomersBloc>()
                                    .add(const ClearSpecialPriceCustomer());
                                context.read<SpecialPriceCustomersBloc>().add(
                                    GetSpecialPriceCustomersEvent(
                                        userID: widget.user.usrId!,
                                        fromDate: '01-01-2023',
                                        todate: '01-05-2024',
                                        searchQuery: ''));
                              },
                              child: const Icon(
                                Icons.close,
                                size: 14,
                              ),
                            ),
                            hintText: "Search Customers",
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
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Assigned Customers',
                      style: countHeading(),
                    ),
                    Text(
                      '13',
                      style: countHeading(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SPCustomerList(),
            ],
          ),
        ),
      ),
    );
  }
}
