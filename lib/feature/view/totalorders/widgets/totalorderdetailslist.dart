import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrderDetailsList extends StatelessWidget {
  final TotalOrdersModel totalorders;
  const TotalOrderDetailsList({super.key, required this.totalorders});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      color: const Color.fromARGB(255, 181, 218, 245),
      displacement: BorderSide.strokeAlignCenter,
      onRefresh: () => _onRefreshTotalOrderDetail(context),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<TotalOrdersDetailsBloc, TotalOrdersDetailsState>(
                builder: (context, state) {
                  return state.when(
                    getTotalOrdersDetailsState: (orderdetails) =>
                        orderdetails == null
                            ? Padding(
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
                              )
                            : orderdetails.isEmpty
                                ? const Center(
                                    child: Text('No Data Found'),
                                  )
                                : Column(
                                    children: [
                                      ListView.builder(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder:
                                              (context, index) => Column(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 20),
                                                        child: Row(
                                                          children: [
                                                            Flexible(
                                                              flex: 3,
                                                              fit:
                                                                  FlexFit.tight,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                      orderdetails[index]
                                                                              .prdCode ??
                                                                          '',
                                                                      style:
                                                                          loadTextStyle()),
                                                                  Text(
                                                                      orderdetails[index]
                                                                              .prdName ??
                                                                          '',
                                                                      style:
                                                                          subTitleTextStyle()),
                                                                ],
                                                              ),
                                                            ),
                                                            /* SizedBox(
                                                              width: 70.h,
                                                            ), */
                                                            Flexible(
                                                              flex: 1,
                                                              fit:
                                                                  FlexFit.tight,
                                                              child: Column(
                                                                children: [
                                                                  Visibility(
                                                                    visible: orderdetails[index].oddHigherUom ==
                                                                                null ||
                                                                            orderdetails[index].oddHigherUom!.isEmpty
                                                                        ? false
                                                                        : true,
                                                                    child: Text(
                                                                      orderdetails[
                                                                              index]
                                                                          .oddHigherUom!,
                                                                      style:
                                                                          subTitleTextStyle(),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Visibility(
                                                                    visible: orderdetails[index].oddLowerUom ==
                                                                                null ||
                                                                            orderdetails[index].oddLowerUom!.isEmpty
                                                                        ? false
                                                                        : true,
                                                                    child: Text(
                                                                      orderdetails[
                                                                              index]
                                                                          .oddLowerUom!,
                                                                      style:
                                                                          subTitleTextStyle(),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 20.h,
                                                            ),
                                                            Column(
                                                              children: [
                                                                Text(
                                                                  orderdetails[
                                                                          index]
                                                                      .oddHigherQty!,
                                                                  style:
                                                                      subTitleTextStyle(),
                                                                ),
                                                                SizedBox(
                                                                  height: 5.h,
                                                                ),
                                                                Text(
                                                                  orderdetails[
                                                                          index]
                                                                      .oddLowerQty!,
                                                                  style:
                                                                      subTitleTextStyle(),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .only(
                                                                right: 20),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Container(
                                                              // width: 50.w,
                                                              height: 20.h,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xffECEFBE),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                              ),
                                                              child: Center(
                                                                child: Padding(
                                                                  padding: const EdgeInsets
                                                                      .symmetric(
                                                                      horizontal:
                                                                          5),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        'AED ',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        orderdetails[index].oddPrice ??
                                                                            '',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              9.sp,
                                                                          color:
                                                                              Colors.black,
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
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Sub Total',
                                                  style: subTitleTextStyle(),
                                                ),
                                                Text(
                                                  totalorders.subTotal ?? '',
                                                  style: subTitleTextStyle(),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'VAT',
                                                  style: subTitleTextStyle(),
                                                ),
                                                Text(
                                                  totalorders.vat ?? '',
                                                  style: subTitleTextStyle(),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                    totalOrdersDetailsFailedState: () => SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
                      child: Center(
                        child: Text(
                          'No Data Available',
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
    );
  }

  Future<void> _onRefreshTotalOrderDetail(BuildContext context) async {
    context.read<TotalOrdersDetailsBloc>().add(const ClearTotalOrdersDetails());
    context.read<TotalOrdersDetailsBloc>().add(GetTotalOrdersDetailsEvent(
        userID: totalorders.ordId!, searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }
}
