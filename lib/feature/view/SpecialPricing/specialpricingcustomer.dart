import 'dart:async';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_outparas/special_price_header_outparas.dart';
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/view/SpecialPricing/Widgets/spcustomerlist.dart';
import 'package:customer_connect/feature/view/SpecialPricing/Widgets/specialpricingdetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/fonts.dart';

class SpecialPricingCustomer extends StatefulWidget {
  final LoginUserModel user;
  final SpecialPriceHeaderOutparas spPrice;
  const SpecialPricingCustomer(
      {super.key, required this.user, required this.spPrice});

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
        userID: widget.spPrice.prhId ?? '',
        fromDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        todate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
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
              left: 10.0,
              right: 10,
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
                                  widget.spPrice.prhName!.split('').toList()[0],
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
                                SizedBox(
                                  width: 210.w,
                                  child: Text(
                                    widget.spPrice.prhName!,
                                    overflow: TextOverflow.ellipsis,
                                    style: blueTextStyle(),
                                  ),
                                ),
                                Text(
                                  '${widget.spPrice.startDate} to ${widget.spPrice.endDate}',
                                  style: subTextStyle(),
                                ),
                                Text(
                                  widget.spPrice.prhCode!,
                                  style: subTextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context
                              .read<SpecialPriceDetailsBloc>()
                              .add(const ClearSpecialriceDetailsEvent());
                          context.read<SpecialPriceDetailsBloc>().add(
                              GetSpecialPriceDetailsEvent(
                                  prhID: widget.spPrice.prhId!,
                                  searchQuery: ''));
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SpecialPricing(
                                        user: widget.user,
                                        spPrice: widget.spPrice,
                                      )));
                        },
                        child: Row(
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
                        ),
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
                                      userID: widget.spPrice.prhId ?? '',
                                      fromDate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                      todate:
                                          '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
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
                                        userID: widget.spPrice.prhId ?? '',
                                        fromDate:
                                            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                        todate:
                                            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                        searchQuery: ''));
                              },
                              child: const Icon(
                                Icons.close,
                                size: 14,
                              ),
                            ),
                            hintText: "Search customers",
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
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () =>
            _onRefreshSpecialPricingCustomerScreen(context, widget.user),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Assigned Customers',
                        style: countHeading(),
                      ),
                      BlocBuilder<SpecialPriceCustomersBloc,
                          SpecialPriceCustomersState>(
                        builder: (context, state) {
                          return Text(
                            state.when(
                              getSpecialPriceCustomers: (spCustomers) =>
                                  spCustomers == null
                                      ? '0'
                                      : spCustomers.length.toString(),
                              specialPriceCustomersFailedState: () => '0',
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
                const SPCustomerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshSpecialPricingCustomerScreen(
      BuildContext context, LoginUserModel model) async {
    context
        .read<SpecialPriceCustomersBloc>()
        .add(const ClearSpecialPriceCustomer());
    context.read<SpecialPriceCustomersBloc>().add(GetSpecialPriceCustomersEvent(
        userID: widget.spPrice.prhId ?? '',
        fromDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        todate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        searchQuery: ''));

    // context.read<SpecialPriceDetailsBloc>().add(const ClearSpecialriceDetailsEvent());
    // context.read<SpecialPriceDetailsBloc>().add(const GetSpecialPriceDetailsEvent(
    //     prhID: '',
    //     searchQuery: ''));
  }
}
