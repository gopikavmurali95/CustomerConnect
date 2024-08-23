import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_inparas_model/sales_order_details_inparas_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_model/sales_orders_model.dart';
import 'package:customer_connect/feature/state/bloc/salesorderdetails/sales_order_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SalesOrderDetailsList extends StatelessWidget {
  final LoginUserModel user;
  final SalesOrdersModel salesorders;
  const SalesOrderDetailsList({
    super.key,
    required this.salesorders,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      color: const Color.fromARGB(255, 181, 218, 245),
      displacement: BorderSide.strokeAlignCenter,
      onRefresh: () => _onRefreshSalesOrderDetail(context),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              BlocBuilder<SalesOrderDetailsBloc, SalesOrderDetailsState>(
                builder: (context, state) {
                  return state.when(
                    getSalesOrderDetails: (orderdetails) => orderdetails == null
                        ? Padding(
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
                          )
                        : orderdetails.isEmpty
                            ? Center(
                                child: Text(
                                    AppLocalizations.of(context)!.noDataFound),
                              )
                            : Column(
                                children: [
                                  ListView.builder(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) => Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              2.1,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            orderdetails[index]
                                                                    .cshCode ??
                                                                '',
                                                            style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff6E62A4),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          Text(
                                                            selectedLocale?.languageCode == 'en'?orderdetails[index]
                                                                    .cshName ??
                                                                '':orderdetails[index].arcshName??'',
                                                            style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 70.h,
                                                    ),
                                                    /* Column(
                                                              children: [
                                                                Visibility(
                                                                  visible: orderdetails[index].oddHigherUom ==
                                                                              null ||
                                                                          orderdetails[index]
                                                                              .oddHigherUom!
                                                                              .isEmpty
                                                                      ? false
                                                                      : true,
                                                                  child: Text(
                                                                      orderdetails[index]
                                                                              .oddHigherUom ??
                                                                          ''),
                                                                ),
                                                                SizedBox(
                                                                  height: 5.h,
                                                                ),
                                                                Visibility(
                                                                  visible: orderdetails[index].oddLowerUom ==
                                                                              null ||
                                                                          orderdetails[index]
                                                                              .oddLowerUom!
                                                                              .isEmpty
                                                                      ? false
                                                                      : true,
                                                                  child: Text(
                                                                      orderdetails[index]
                                                                              .oddLowerUom ??
                                                                          ''),
                                                                ),
                                                              ],
                                                            ), */
                                                    SizedBox(
                                                      width: 20.h,
                                                    ),
                                                    /* Column(
                                                              children: [
                                                                Text(orderdetails[
                                                                            index]
                                                                        .oddHigherQty ??
                                                                    ''),
                                                                SizedBox(
                                                                  height: 5.h,
                                                                ),
                                                                Text(orderdetails[
                                                                            index]
                                                                        .oddLowerQty ??
                                                                    ''),
                                                              ],
                                                            ), */
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 20),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      // width: 50.w,
                                                      height: 20.h,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffECEFBE),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                      ),
                                                      child: Center(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      5),
                                                          child: Row(
                                                            children: [
                                                              Text(
                                                                '${AppLocalizations.of(context)!.aed} ',
                                                                style:
                                                                    TextStyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                ),
                                                              ),
                                                              /* Text(
                                                                        orderdetails[index].oddPrice ??
                                                                            '',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              10.sp,
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                        ),
                                                                      ), */
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
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(AppLocalizations.of(context)!
                                                .sub_total),
                                            Text(salesorders.subTotal ?? '')
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('VAT'),
                                            Text(salesorders.vat ?? '')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                    salesOrderDetailsFailed: () => SizedBox(
                      height: MediaQuery.of(context).size.height / 2,
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
    );
  }

  Future<void> _onRefreshSalesOrderDetail(BuildContext context) async {
    context.read<SalesOrderDetailsBloc>().add(GetSalesOrderDetailsEvent(
        salesin: SalesOrderDetailsInparasModel(
            userId: user.usrId,
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            area: '',
            subArea: '',
            route: '',
            cusId: salesorders.cusId),
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }
}
