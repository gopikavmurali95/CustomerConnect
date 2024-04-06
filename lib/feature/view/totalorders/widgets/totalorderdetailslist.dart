import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrderDetailsList extends StatelessWidget {
  final TotalOrdersModel totalorders;
  const TotalOrderDetailsList({super.key, required this.totalorders});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<TotalOrdersDetailsBloc, TotalOrdersDetailsState>(
            builder: (context, state) {
              return state.when(
                getTotalOrdersDetailsState: (orderdetails) => orderdetails ==
                        null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ShimmerContainers(
                                height: 60.h, width: double.infinity),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: 10),
                      )
                    : Column(
                        children: [
                          ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    orderdetails[index]
                                                            .prdCode ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff6E62A4),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Text(
                                                    orderdetails[index]
                                                            .prdName ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 60.h,
                                            ),
                                            Column(
                                              children: [
                                                Text(orderdetails[index]
                                                        .oddLowerUom ??
                                                    ''),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(orderdetails[index]
                                                        .oddHigherUom ??
                                                    ''),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.h,
                                            ),
                                            Column(
                                              children: [
                                                Text(orderdetails[index]
                                                        .oddLowerQty ??
                                                    ''),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(orderdetails[index]
                                                        .oddHigherQty ??
                                                    ''),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              // width: 50.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                color: const Color(0xffECEFBE),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'AED ',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                      Text(
                                                        orderdetails[index]
                                                                .oddPrice ??
                                                            '',
                                                        style: TextStyle(
                                                          fontSize: 10.sp,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Divider(
                                        color: Colors.grey[300],
                                      ),
                                    ],
                                  ),
                              itemCount: orderdetails.length),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Sub Total'),
                                    Text(totalorders.subTotal ?? '')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('VAT'),
                                    Text(totalorders.vat ?? '')
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                totalOrdersDetailsFailedState: () => Center(
                  child: Text(
                    'No Data Available',
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
