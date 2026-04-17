import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                          AppLocalizations.of(context)!.noDataFound,
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                        color: const Color(0xffE5E7EB))),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor:
                                            headers[index].status == "Due"
                                                ? const Color(0xffE4F7E2)
                                                : const Color(0xffF7E9E2),
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
                                            Row(
                                              children: [
                                                Text(
                                                  headers[index].invoiceId ??
                                                      '',
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff101828),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5.w,
                                                ),
                                                Container(
                                                  height: 16.h,
                                                  width: 55.w,
                                                  decoration: BoxDecoration(
                                                      color: headers[index]
                                                                  .status ==
                                                              "Due"
                                                          ? /*  outstandingcolorslist[
                                                                  0] */
                                                          const Color(
                                                              0xffE4F7E2)
                                                          : /* outstandingcolorslist[
                                                                  1] */
                                                          const Color(
                                                              0xffF7E9E2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)),
                                                  child: Center(
                                                    child: Text(
                                                      headers[index].status ??
                                                          '',
                                                      style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: headers[index]
                                                                    .status ==
                                                                "Due"
                                                            ? /*  outstandingcolorslist[
                                                                  0] */
                                                            const Color(
                                                                0xff008236)
                                                            : /* outstandingcolorslist[
                                                                  1] */
                                                            const Color(
                                                                0xffC10007),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            Text(
                                              headers[index].invoicedOn ?? '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  color: Color(0xff6A7282)),
                                            ),
                                            Text(
                                              headers[index].invoiceAmount ??
                                                  '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  color: Color(0xff6A7282)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            headers[index].invoiceBalance ?? "",
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff101828),
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Text(
                                            "AED",
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Color(0xff6A7282)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        itemCount: headers.length),
            getOutStandingFailedState: () => SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.noDataAvailable,
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
