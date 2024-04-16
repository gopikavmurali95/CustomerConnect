import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysDeliveryDetailsList extends StatelessWidget {
  const TodaysDeliveryDetailsList({super.key});

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
                                                    '40047977',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff6E62A4),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Divella Farfalle farfalle pasta Offer pack',
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
                                              width: 8.h,
                                            ),
                                            Column(
                                              children: [
                                                const Text('CS'),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                const Text('CS'),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.h,
                                            ),
                                            Column(
                                              children: [
                                                const Text('1'),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                const Text('1'),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 45.h,
                                            ),
                                            Column(
                                              children: [
                                                const Text('1'),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                const Text('1'),
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
                                                    'AED 34.00',
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
                              itemCount: 10),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sub Total'),
                                    Text('1800.00')
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text('VAT'), Text('90.00')],
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
