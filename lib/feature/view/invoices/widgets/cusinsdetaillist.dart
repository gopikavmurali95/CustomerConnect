import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CusInsInvoiceDetailListWidget extends StatelessWidget {
  const CusInsInvoiceDetailListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CusInvDetailBlocBloc, CusInvDetailBlocState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              state.when(
                getcusInvDetailState: (details, types) => details == null
                    ? ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ShimmerContainers(
                            height: 60.h, width: double.infinity),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 10.h,
                            ),
                        itemCount: 10)
                    : details.isEmpty
                        ? SizedBox(
                            height: 100.h,
                            child: Center(
                              child: Text(
                                'No Data Found',
                                style: kfontstyle(),
                              ),
                            ),
                          )
                        : ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          SizedBox(
                                            // color: Colors.teal,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                2,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  details[index].prdCode ?? '',
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                    details[index].prdName ??
                                                        '',
                                                    style: /* kfontstyle(
                                                fontSize: 12.sp,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400,
                                              ), */
                                                        subTitleTextStyle()),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15.h,
                                          ),
                                          Text(
                                            details[index].prdtype ?? '',
                                            style: subTitleTextStyle(),
                                          ),
                                          SizedBox(
                                            width: 30.h,
                                          ),
                                          Column(
                                            children: [
                                              Visibility(
                                                visible:
                                                    details[index].higherUom ==
                                                                null ||
                                                            details[index]
                                                                .higherUom!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  details[index].higherUom ??
                                                      '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Visibility(
                                                visible:
                                                    details[index].lowerUom ==
                                                                null ||
                                                            details[index]
                                                                .lowerUom!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  details[index].lowerUom ?? '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30.h,
                                          ),
                                          Column(
                                            children: [
                                              Visibility(
                                                visible:
                                                    details[index].higherQty ==
                                                                null ||
                                                            details[index]
                                                                .higherQty!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  details[index].higherQty ??
                                                      '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.h,
                                              ),
                                              Visibility(
                                                visible:
                                                    details[index].lowerQty ==
                                                                null ||
                                                            details[index]
                                                                .lowerQty!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  details[index].lowerQty ?? '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              // width: 50.w,
                                              height: 20.h,
                                              decoration: BoxDecoration(
                                                color: const Color(0xfffcf5e8),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: Center(
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(horizontal: 5),
                                                  child: Text(
                                                    'AED ${details[index].amount}',
                                                    style: TextStyle(
                                                      fontSize: 8.sp,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: details.length),
                getcusInvFailedState: () => Center(
                  child: Text(
                    'No Data Available',
                    style: kfontstyle(),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              state.when(
                getcusInvDetailState: (details, types) => types == null
                    ? const SizedBox()
                    : Column(
                        children: [
                          Container(
                            height: 30.h,
                            width: double.infinity,
                            color: const Color(0xfff5f5f5),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Type',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'value',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.h,
                                      ),
                                      Text(
                                        'Discount',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.h,
                                      ),
                                      Text(
                                        'Vat',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15.h,
                                      ),
                                      Text(
                                        'Subtotal',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      // mainAxisAlignment:
                                      //     MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                            flex: 2,
                                            fit: FlexFit.tight,
                                            child:
                                                Text(types[index].type ?? '')),
                                        Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child:
                                                Text(types[index].value ?? '')),
                                        /*  SizedBox(
                                          width: 20.h,
                                        ), */
                                        Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: Text(
                                                types[index].discount ?? '')),
                                        /*  SizedBox(
                                          width: 20.h,
                                        ), */
                                        Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child:
                                                Text(types[index].vat ?? '')),
                                        SizedBox(
                                          width: 5.h,
                                        ),
                                        Flexible(
                                            flex: 0,
                                            fit: FlexFit.tight,
                                            child: Text(
                                                types[index].subTotal ?? '')),
                                      ],
                                    ),
                                  ),
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 0.h,
                                  ),
                              itemCount: types.length)
                        ],
                      ),
                getcusInvFailedState: () => const SizedBox(),
              )
            ],
          ),
        );
      },
    );
  }
}
