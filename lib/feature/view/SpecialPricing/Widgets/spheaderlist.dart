import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';

import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/view/SpecialPricing/Widgets/specialpricingdetails.dart';
import 'package:customer_connect/feature/view/SpecialPricing/specialpricingcustomer.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/fonts.dart';

class SpPrHeaderList extends StatelessWidget {
  final LoginUserModel user;

  const SpPrHeaderList({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialPriceHeaderBloc, SpecialPriceHeaderState>(
      builder: (context, state) {
        return state.when(
          getSpecialPriceHeaderState: (spHeader) => spHeader == null
              ? SizedBox(
                  height: MediaQuery.of(context).size.height,
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
              : SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    // padding: const EdgeInsets.only(
                    //   left: 20, right: 10,
                    //   //top: 10,
                    //   //  bottom: 10
                    // ),
                    itemCount: spHeader.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          SizedBox(
                            //color: Colors.red,
                            // height: 50,
                            width: double.infinity,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10.0, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              const Color(0xffB3DAF7),
                                          child: Center(
                                            child: Text(
                                              spHeader[index]
                                                  .prhName!
                                                  .split('')
                                                  .toList()[0],
                                              style: TextStyle(
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SpecialPricingCustomer(
                                                          user: user,
                                                          spPrice:
                                                              spHeader[index],
                                                        )));
                                          },
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 200.w,
                                                child: Text(
                                                  '${spHeader[index].prhName}',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: blueTextStyle(),
                                                ),
                                              ),
                                              Text(
                                                '${spHeader[index].startDate} To ${spHeader[index].endDate}',
                                                style: subTextStyle(),
                                              ),
                                              Text(
                                                '${spHeader[index].prhCode}',
                                                style: subTextStyle(),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<SpecialPriceDetailsBloc>()
                                              .add(
                                                  const ClearSpecialriceDetailsEvent());
                                          context
                                              .read<SpecialPriceDetailsBloc>()
                                              .add(GetSpecialPriceDetailsEvent(
                                                  prhID:
                                                      spHeader[index].prhId ??
                                                          '',
                                                  searchQuery: ''));
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SpecialPricing(
                                                        user: user,
                                                        spPrice:
                                                            spHeader[index],
                                                      )));
                                        },
                                        child: Text(
                                          'Details',
                                          style: TextStyle(fontSize: 10.sp),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_right,
                                        size: 18,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 0, right: 0, top: 0
                                    // top: 10,bottom: 10
                                    ),
                            child: Divider(
                              color: Colors.grey.shade300,
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
          speciaPriceHeaderFailedState: () => SizedBox(
            height: MediaQuery.of(context).size.height,
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
