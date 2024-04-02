import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionCustomerList extends StatelessWidget {
  const PromotionCustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PromotionCustomerBloc, PromotionCustomerState>(
      builder: (context, state) {
        return state.when(
          getPromotionCustomer: (promocustomer) => promocustomer == null
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
              : ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: promocustomer.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: const Color(0xffB3DAF7),
                            child: Center(
                              child: Text(
                                promocustomer[index]
                                    .cusName!
                                    .split('')
                                    .toList()[0],
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                          title: Row(
                            children: [
                              Text(
                                // promocustomer[index].cusCode ?? '',
                                '${promocustomer[index].cusCode}',
                                style: blueTextStyle(),
                              ),
                              Text(' - ${promocustomer[index].cusName}',
                                  style: subTitleTextStyle())
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /*   Text(
                                '199521 - Carrefour Hypermarket',
                                style: subTitleTextStyle(),
                              ), */
                              Text(
                                '${promocustomer[index].cusType} | ${promocustomer[index].promotionCustomerModelClass} | ${promocustomer[index].areaName}',
                                style: statusTextStyle(),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 0),
                          child: Divider(
                            color: Colors.grey.shade300,
                          ),
                        )
                      ],
                    );
                  }),
          promotionCustomerFailed: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
