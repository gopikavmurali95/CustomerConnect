import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SPCustomerList extends StatelessWidget {
  const SPCustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialPriceCustomersBloc, SpecialPriceCustomersState>(
      builder: (context, state) {
        return state.when(
          getSpecialPriceCustomers: (customer) => customer == null
              ? Expanded(
                  child: Padding(
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
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: customer.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: const Color(0xffB3DAF7),
                                child: Center(
                                  child: Text(
                                    customer[index]
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
                                    customer[index].cusCode!,
                                    style: blueTextStyle(),
                                  ),
                                  Expanded(
                                    child: Text(' -${customer[index].cusName}',
                                        overflow: TextOverflow.ellipsis,
                                        style: subTitleTextStyle()),
                                  )
                                ],
                              ),
                              /*  subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250.w,
                                    child: Text(
                                      '${customer[index].cusCode} - ${customer[index].cusName}',
                                      overflow: TextOverflow.ellipsis,
                                      style: subTitleTextStyle(),
                                    ),
                                  ),
                                  
                                ],
                              ), */
                            ),
                            const Divider()
                          ],
                        );
                      }),
                ),
          specialPriceCustomersFailedState: () => SizedBox(
            height: 400.h,
            child: Center(
              child: Text(
                'No data Available',
                style: kfontstyle(),
              ),
            ),
          ),
        );
      },
    );
  }
}
