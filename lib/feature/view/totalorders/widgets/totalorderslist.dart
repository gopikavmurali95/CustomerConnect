import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/view/totalorders/totalorderdetails.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrderList extends StatelessWidget {
  const TotalOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<TotalOrdersHeaderBloc, TotalOrdersHeaderState>(
        builder: (context, state) {
          return state.when(
            getTotalOrderState: (totalorders) => totalorders == null
                ? const Center(
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: Colors.red,
                      radius: 30,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            context
                                .read<TotalOrdersDetailsBloc>()
                                .add(const ClearTotalOrdersDetails());
                            context.read<TotalOrdersDetailsBloc>().add(
                                GetTotalOrdersDetailsEvent(
                                    userID: totalorders[index].ordId!));
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TotalOrderDetails(
                                  totalorders: totalorders[index],
                                ),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor: const Color(0xffbadb95),
                                child: Image.asset(
                                  "assets/images/delivery.png",
                                  height: 20,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      totalorders[index].orderId ?? '',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          totalorders[index].cusCode ?? '',
                                          style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: const Color(0xff2C6B9E),
                                          ),
                                        ),
                                        Text(
                                          ' - ',
                                          style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: const Color(0xff2C6B9E),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            totalorders[index].cusName ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          totalorders[index].cshCode ?? '',
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                        Text(
                                          ' - ',
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                        Expanded(
                                          child: Text(
                                            totalorders[index].cshName ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            style: kfontstyle(fontSize: 12.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        // Text(
                                        //   'CR | Route 101 | 16 May 2023 | 10:35',
                                        //   style: kfontstyle(
                                        //       fontSize: 10.sp, color: Colors.grey),
                                        // ),
                                        Text(
                                          totalorders[index].status ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          ' | ',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          totalorders[index].rotName ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          ' | ',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          totalorders[index].date ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          ' | ',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                        Text(
                                          totalorders[index].time ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 14.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    color: totalorders[index].ordType == 'O'
                                        ? const Color(0xffe3f7e2)
                                        : const Color(0xfff7f4e2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    totalorders[index].ordType ?? '',
                                    style: kfontstyle(
                                        fontSize: 10.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                    separatorBuilder: (context,
                            index) => /* const SizedBox(
                      height: 10,
                    ) */
                        Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: totalorders.length),
            totalOrdersFailedState: () => Center(
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
