import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/view/totalorders/widgets/totalorderdetailslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalOrderDetails extends StatefulWidget {
  final LoginUserModel user;
  final TotalOrdersModel totalorders;
  const TotalOrderDetails(
      {super.key, required this.totalorders, required this.user});

  @override
  State<TotalOrderDetails> createState() => _TotalOrderDetailsState();
}

final _totalOrderDetailSearchCtrl = TextEditingController();
Timer? debounce;

class _TotalOrderDetailsState extends State<TotalOrderDetails> {
  @override
  void initState() {
    _totalOrderDetailSearchCtrl.clear();
    context.read<TotalOrdersDetailsBloc>().add(GetTotalOrdersDetailsEvent(
        userID: widget.totalorders.ordId ?? '', searchQuery: ''));
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
          "Order Details",
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
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.totalorders.orderId ?? '',
                              style: blueTextStyle()),
                          Row(
                            children: [
                              Text(
                                '${widget.totalorders.cusCode} - ',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  widget.totalorders.cusName ?? '',
                                  style: subTitleTextStyle(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.totalorders.cshCode} - ',
                                style: subTitleTextStyle(),
                              ),
                              Expanded(
                                child: Text(
                                  widget.totalorders.cshName ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: subTitleTextStyle(),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${widget.totalorders.rotName} | ${widget.totalorders.date} | ${widget.totalorders.time}',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 14.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                          color: widget.totalorders.status == 'C'
                              ? const Color(0xfff7f4e2)
                              : const Color(0xffe3f7e2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Text(
                          getstatus(widget.totalorders.status ?? ''),
                          style: kfontstyle(
                              fontSize: 10.sp, color: const Color(0xff413434)),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 30,
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
                      controller: _totalOrderDetailSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context.read<TotalOrdersDetailsBloc>().add(
                                GetTotalOrdersDetailsEvent(
                                    userID: widget.user.usrId!,
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search items ",
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
                              _totalOrderDetailSearchCtrl.clear();
                              context.read<TotalOrdersDetailsBloc>().add(
                                  GetTotalOrdersDetailsEvent(
                                      userID: widget.user.usrId!,
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /* const ,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Uom'),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Qty'),
                    ],
                  ), */
                  Flexible(
                      flex: 4,
                      fit: FlexFit.tight,
                      child: Text('items', style: boxHeading())),
                  Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text('UOM', style: boxHeading())),
                  Flexible(
                      flex: 0,
                      fit: FlexFit.tight,
                      child: Text('Qty', style: boxHeading()))
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          Expanded(
              child: TotalOrderDetailsList(
            totalorders: widget.totalorders,
          )),
        ],
      ),
      bottomNavigationBar: SizedBox(
        //height: MediaQuery.of(context).size.width / 1.8,
        height: 40.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Amount',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                widget.totalorders.grandTotal ?? '',
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }

  getstatus(String status) {
    String s = status.toUpperCase().toLowerCase().startsWith('q')
        ? "QN"
        : status.toUpperCase().toLowerCase().startsWith('o')
            ? "SO"
            : status.split('').toList()[0];

    return s;
  }
}
