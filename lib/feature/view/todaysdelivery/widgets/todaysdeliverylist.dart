import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/view/todaysdelivery/todaysdeliverydetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodaysDeliveryList extends StatelessWidget {
  const TodaysDeliveryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<TodaysDeliveryHeaderBloc, TodaysDeliveryHeaderState>(
        builder: (context, state) {
          return state.when(
            getTodaysDeliveryState: (delivery) => delivery == null
                ? const SizedBox()
                : ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TodaysDeliveryDetails(
                                  todaysdelivery: delivery[index],
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
                                      'MO86764',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'A025206 - ',
                                          style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: const Color(0xff2C6B9E),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            'Tromp, Muller and Mitchell',
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
                                          '199525 - ',
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Carrefour Hypermarket',
                                            overflow: TextOverflow.ellipsis,
                                            style: kfontstyle(fontSize: 12.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'CR | Route 101 | 16 May 2023 | 10:35',
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
                                    color: index % 2 == 0
                                        ? const Color(0xffe3f7e2)
                                        : const Color(0xfff7f4e2),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                  child: Text(
                                    index % 2 == 0 ? 'DE' : 'PE',
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
                    itemCount: 10),
            todaysDeliveryFailedState: () => Center(
              child: Text(
                'No data Avialble',
                style: kfontstyle(),
              ),
            ),
          );
        },
      ),
    );
  }
}
