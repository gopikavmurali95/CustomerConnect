import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ARDetailInvoiceWidget extends StatelessWidget {
  const ARDetailInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            decoration: const BoxDecoration(color: Color(0xfff5f5f5)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Text(
                      'Invoice No.',
                      style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      'Date',
                      style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Text(
                      'Inv Amt',
                      style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ),
                  Flexible(
                    flex: 0,
                    fit: FlexFit.tight,
                    child: Text(
                      'Alct Amt',
                      style: kfontstyle(fontSize: 10.sp, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: BlocBuilder<ArDetailsBloc, ArDetailsState>(
              builder: (context, state) {
                return state.when(
                  getArDetailsState: (ardetails) => ardetails == null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  ShimmerContainers(
                                      height: 60.h, width: double.infinity),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: 10),
                        )
                      : ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 10),
                                    child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            ardetails[index].invoiceId ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            ardetails[index].invoicedOn ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            ardetails[index].invoiceAmount ??
                                                "",
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            ardetails[index].amountPaid ?? "",
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 0,
                                    ),
                                    child: Divider(
                                      color: Colors.grey[300],
                                    ),
                                  )
                                ],
                              ),
                          separatorBuilder: (context, index) =>
                              const SizedBox(),
                          itemCount: ardetails.length),
                  ardetailsfailedState: () => Center(
                    child: Text(
                      'No Data Available',
                      style: kfontstyle(),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
