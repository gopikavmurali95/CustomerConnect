import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart';
import 'package:customer_connect/feature/view/salesorders/salesorderdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesOrdersListingWidget extends StatelessWidget {
  final LoginUserModel user;
  const SalesOrdersListingWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<CusSalesOrdersBloc, CusSalesOrdersState>(
        builder: (context, state) {
          return state.when(
            getsalesOrdersState: (orders) => orders == null
                ? ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
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
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SalesOrderDetails(
                                            user: user,
                                            salesorders: orders[index])));
                              },
                              child: Row(
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
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
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
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "${orders[index].cusCode} - ${orders[index].cusName}",
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    kfontstyle(fontSize: 11.sp),
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
                                    ),
                                  ),
                                ],
                              ),
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
