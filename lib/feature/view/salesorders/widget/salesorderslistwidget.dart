import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesOrdersListingWidget extends StatelessWidget {
  const SalesOrdersListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<CusSalesOrdersBloc, CusSalesOrdersState>(
        builder: (context, state) {
          return state.when(
            getsalesOrdersState: (orders) => orders == null
                ? ListView.separated(
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 50.h, width: double.infinity),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 5.h,
                        ),
                    itemCount: 10)
                : orders.isEmpty
                    ? Center(
                        child: Text(
                          'No Data Found',
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: const Color(0xffbadb95),
                                  child: Image.asset(
                                    'assets/images/delivery.png',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                SizedBox(
                                  // height: 55.h,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        orders[index].orderId ?? '',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff2C6B9E),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Text(
                                        '${orders[index].date} | ${orders[index].time}',
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      height: 14.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          color: /* index % 2 == 0
                                          ? */
                                              const Color(
                                                  0xffe3f7e2) /* : const Color(0xfff7f4e2) */,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          orders[index].status ?? '',
                                          style: kfontstyle(
                                            fontSize: 10.sp,
                                            color: const Color(0xff413434),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: orders.length),
            salesOrdersFailedState: () => Padding(
              padding: EdgeInsets.only(top: 250.h),
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
