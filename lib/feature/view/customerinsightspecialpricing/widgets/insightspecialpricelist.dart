import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/cusinsightspdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';

class InsightSpecialPriceList extends StatelessWidget {
  const InsightSpecialPriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: BlocBuilder<CusSpPriceBloc, CusSpPriceState>(
        builder: (context, state) {
          return state.when(
            getCusSpPriceHeadersState: (headers) => headers == null
                ? ListView.separated(
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 10)
                : headers.isEmpty
                    ? Center(
                        child: Text(
                          'No Data Found',
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.only(
                          left: 05, right: 05,
                          //top: 10,
                          //  bottom: 10
                        ),
                        shrinkWrap: true,
                        itemCount: headers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  context.read<SpecialPriceDetailsBloc>().add(
                                      const GetSpecialPriceDetailsEvent(
                                          prhID: "1", searchQuery: ''));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CustomerInsightSpecialPriceDetails()));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundColor:
                                                const Color(0xffA4C8E9),
                                            child: Image.asset(
                                              "assets/images/listicon.png",
                                              height: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12.w,
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 10.0,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    headers[index].prhName ??
                                                        '',
                                                    style: blueTextStyle(),
                                                  ),
                                                  Text(
                                                    "${headers[index].startDate} to ${headers[index].endDate}",
                                                    style: subTitleTextStyle(),
                                                  ),
                                                  Text(
                                                    headers[index].prhCode ??
                                                        '',
                                                    style: subTitleTextStyle(),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Details   ",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_right,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                              ),
                            ],
                          );
                        },
                      ),
            cusSpPriceHeaderFailedState: () => Center(
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
