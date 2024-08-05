import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailcount/target_details_count_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RouteTargetDaysWidget extends StatefulWidget {
  final TargetHeaderListModel headr;
  const RouteTargetDaysWidget({super.key, required this.headr});

  @override
  State<RouteTargetDaysWidget> createState() => _RouteTargetDaysWidgetState();
}

class _RouteTargetDaysWidgetState extends State<RouteTargetDaysWidget> {
  @override
  void initState() {
    context.read<TargetDetailsCountBloc>().add(const ClearTargetDetailsCount());
    context.read<TargetDetailsCountBloc>().add(GetTargetDetailsCountEvent(
        fromDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        rotID: widget.headr.rotID ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: BlocBuilder<TargetDetailsCountBloc, TargetDetailsCountState>(
        builder: (context, state) {
          return state.when(
              gettargetDetailCountState: (count) => count == null
                  ? ShimmerContainers(height: 60.h, width: double.infinity)
                  : Container(
                      width: double.infinity,
                      //height: 80.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade200,
                                spreadRadius: 1.5,
                                blurRadius: 2)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 35, right: 10, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Month',
                                  style: kfontstyle(
                                      fontSize: 9.sp,
                                      color: Colors.grey.shade600),
                                ),
                                Text(
                                  count.month ?? '',
                                  style: kfontstyle(
                                      fontSize: 10.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                            Container(
                              width: 190.h,
                              decoration: BoxDecoration(
                                color: const Color(0xffEBEFF4),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Working \n   Days',
                                      style: kfontstyle(
                                          fontSize: 9.sp,
                                          color: Colors.grey.shade600),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Total',
                                          style: kfontstyle(
                                              fontSize: 9.sp,
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          count.totWorkingDays ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Completed',
                                          style: kfontstyle(
                                              fontSize: 9.sp,
                                              color: Colors.grey.shade600),
                                        ),
                                        Text(
                                          count.completedDays ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
              targetDetailCountFailed: () => Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade200,
                              spreadRadius: 1.5,
                              blurRadius: 2)
                        ]),
                    child: Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  ));
        },
      ),
    );
  }
}
