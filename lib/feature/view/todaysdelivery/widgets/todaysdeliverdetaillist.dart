import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_header_model/todays_delivery_header_model.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysDeliveryDetailsList extends StatelessWidget {
  final TodaysDeliveryHeaderModel delivery;
  const TodaysDeliveryDetailsList({super.key, required this.delivery});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<TodaysDeliveryDetailsBloc, TodaysDeliveryDetailsState>(
        builder: (context, state) {
          return state.when(
            getTodaysDeliveryDetails: (delDetails) => delDetails == null
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
                : delDetails.isEmpty
                    ? const Center(
                        child: Text('No Data Found'),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Flexible(
                                              child: SizedBox(
                                                /*  width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2, */
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      delDetails[index]
                                                              .prhCode ??
                                                          '',
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff6E62A4),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        delDetails[index]
                                                                .prhName ??
                                                            '',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  delDetails[index].hUom ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  delDetails[index].lUom ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.h,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  delDetails[index].hQty ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp),
                                                ),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                  delDetails[index].lQty ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp),
                                                ),
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
                                                  child: Text(
                                                    'AED ${delDetails[index].total}',
                                                    style: TextStyle(
                                                      fontSize: 10.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
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
                              itemCount: delDetails.length),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Sub Total',
                                      style: kfontstyle(fontSize: 13.sp),
                                    ),
                                    Text(
                                      delivery.subTotal ?? '',
                                      style: kfontstyle(fontSize: 13.sp),
                                    )
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'VAT',
                                      style: kfontstyle(fontSize: 13.sp),
                                    ),
                                    Text(
                                      delivery.vat ?? '',
                                      style: kfontstyle(fontSize: 13.sp),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
            todaysDeliveryFailed: () => Center(
              child: Text(
                'No Data Available',
                style: kfontstyle(),
              ),
            ),
          );
        },
      ),
    );
  }
}
