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
                                    getstatus(header[index].status ?? ''),
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

  getstatus(String status) {
    String s = status.toUpperCase().toLowerCase().startsWith('q')
        ? "QN"
        : status.toUpperCase().toLowerCase().startsWith('o')
            ? "SO"
            : status.split('').toList()[0];

    return s;
  }
}
