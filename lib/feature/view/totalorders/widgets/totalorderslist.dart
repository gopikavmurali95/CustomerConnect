/* import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/view/totalorders/totalorderdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrderList extends StatelessWidget {
  final LoginUserModel user;
  const TotalOrderList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshTotalOrders(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocBuilder<TotalOrdersHeaderBloc, TotalOrdersHeaderState>(
              builder: (context, state) {
                return state.when(
                  getTotalOrderState: (totalorders) => totalorders == null
                      ? ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ShimmerContainers(
                              height: 60.h, width: double.infinity),
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: 10)
                      : totalorders.isEmpty
                          ? const Center(
                              child: Text('No Data Found'),
                            )
                          : ListView.separated(
                              itemBuilder: (context, index) => InkWell(
                                    onTap: () {
                                      context
                                          .read<TotalOrdersDetailsBloc>()
                                          .add(const ClearTotalOrdersDetails());
                                      context
                                          .read<TotalOrdersDetailsBloc>()
                                          .add(GetTotalOrdersDetailsEvent(
                                              userID: totalorders[index].ordId!,
                                              searchQuery: ''));
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TotalOrderDetails(
                                            totalorders: totalorders[index],
                                            user: user,
                                          ),
                                        ),
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundColor:
                                              const Color(0xffbadb95),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                totalorders[index].orderId ??
                                                    '',
                                                style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    totalorders[index]
                                                            .cusCode ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                    ),
                                                  ),
                                                  Text(
                                                    ' - ',
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      totalorders[index]
                                                              .cusName ??
                                                          '',
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff413434)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    totalorders[index]
                                                            .cshCode ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 11.sp,
                                                        color: const Color(
                                                            0xff413434)),
                                                  ),
                                                  Text(
                                                    ' - ',
                                                    style: kfontstyle(
                                                        fontSize: 11.sp,
                                                        color: const Color(
                                                            0xff413434)),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      totalorders[index]
                                                              .cshName ??
                                                          '',
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: kfontstyle(
                                                          fontSize: 12.sp),
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
                                                    totalorders[index].status ??
                                                        '',
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
                                                    totalorders[index]
                                                            .rotName ??
                                                        '',
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
                                                    totalorders[index].date ??
                                                        '',
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
                                                    totalorders[index].time ??
                                                        '',
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
                                              color:
                                                  totalorders[index].ordType ==
                                                          'O'
                                                      ? const Color(0xffe3f7e2)
                                                      : const Color(0xfff7f4e2),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Center(
                                            child: Text(
                                              totalorders[index].ordType ?? '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  color:
                                                      const Color(0xff413434)),
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
                  totalOrdersFailedState: () => SizedBox(
                    height: MediaQuery.of(context).size.height / 1.5,
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
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshTotalOrders(BuildContext context) async {
    context.read<TotalOrdersHeaderBloc>().add(const TotalOrdersClearEvent());
    context.read<TotalOrdersHeaderBloc>().add(GetTotalOrdersEvent(
        ordersin: TotalOrdersInparas(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userId: user.usrId),
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }
}
 */

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/view/totalorders/totalorderdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalOrderList extends StatelessWidget {
  final LoginUserModel user;
  const TotalOrderList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<TotalOrdersHeaderBloc, TotalOrdersHeaderState>(
        builder: (context, state) {
          return state.when(
            getTotalOrderState: (header) => header == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TotalOrderDetails(
                                      totalorders: header[index], user: user)),
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
                                      header[index].orderId ?? '',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '${header[index].cusCode} - ',
                                          style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: const Color(0xff2C6B9E),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            header[index].cusName ?? '',
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
                                          '${header[index].cshCode} - ',
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                        Expanded(
                                          child: Text(
                                            header[index].cshName ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            style: kfontstyle(fontSize: 12.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    /* Text(
                                      '${header[index].rotName} | ${header[index].salesman} | ${header[index].date} | ${header[index].time}',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ), */
                                    Text(
                                      '${header[index].rotName} | ${header[index].date} | ${header[index].time}',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 14.h,
                                width: 30.w,
                                decoration: BoxDecoration(
                                    color: header[index].status == 'C'
                                        ? const Color(0xfff7f4e2)
                                        : const Color(0xffe3f7e2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    header[index].status ?? '',
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
                    itemCount: header.length),
            totalOrdersFailedState: () => SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: Center(
                child: Text(
                  'No data Available',
                  style: kfontstyle(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
