import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InsightsOutstandingList extends StatelessWidget {
  const InsightsOutstandingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<CusOutStandingBloc, CusOutStandingState>(
        builder: (context, state) {
          return state.when(
            getCusOutStandingState: (counts, headers) => headers == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 50.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : headers.isEmpty
                    ? Center(
                        child: Text(
                          'No Data Found',
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: const Color(0xffDB95B5),
                                  child: Image.asset(
                                    'assets/images/ar_li.png',
                                    height: 20.h,
                                    width: 20.w,
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
                                        headers[index].invoiceId ?? '',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff2C6B9E),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        headers[index].invoicedOn ?? '',
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                      Text(
                                        headers[index].invoiceAmount ?? '',
                                        style: kfontstyle(
                                            fontSize: 10.sp,
                                            color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      headers[index].amountPaid ?? "",
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Container(
                                      height: 14.h,
                                      width: 50.w,
                                      decoration: BoxDecoration(
                                          color: /* index % 2 == 0
                                        ? */
                                              const Color(
                                                  0xffe3f7e2) /* : const Color(0xfff7f4e2), */,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          headers[index].status ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10),
            getOutStandingFailedState: () => SizedBox(
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
    );
  }
}
