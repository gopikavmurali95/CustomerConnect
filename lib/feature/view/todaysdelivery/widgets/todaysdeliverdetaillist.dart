import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_header_model/todays_delivery_header_model.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:customer_connect/l10n/app_localizations.dart';

class TodaysDeliveryDetailsList extends StatelessWidget {
  final TodaysDeliveryHeaderModel delivery;
  const TodaysDeliveryDetailsList({
    super.key,
    required this.delivery,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      triggerMode: RefreshIndicatorTriggerMode.anywhere,
      color: const Color.fromARGB(255, 181, 218, 245),
      displacement: BorderSide.strokeAlignCenter,
      onRefresh: () => _onRefreshInvoiceDetail(context),
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            BlocBuilder<TodaysDeliveryDetailsBloc, TodaysDeliveryDetailsState>(
              builder: (context, state) {
                return state.when(
                  getTodaysDeliveryDetails: (invdetails) => invdetails == null
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
                      : invdetails.isEmpty
                          ? SizedBox(
                              height: 50.h,
                              child: Center(
                                child: Text(
                                  AppLocalizations.of(context)!.noDataFound,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                      invdetails[index]
                                                              .prhCode ??
                                                          '',
                                                      style: loadTextStyle()),
                                                  SizedBox(
                                                    width: 180.w,
                                                    child: Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              "en"
                                                          ? invdetails[index]
                                                                  .prhName ??
                                                              ''
                                                          : invdetails[index]
                                                                  .arprdName ??
                                                              '',
                                                      style:
                                                          subTitleTextStyle(),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),

                                            /* Text(
                                              'invdetails[index].prdType ?? '
                                              '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400),
                                            ), */
                                            SizedBox(
                                              width: 60.w,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Column(
                                                  children: [
                                                    Visibility(
                                                      visible: invdetails[index]
                                                                      .hUom ==
                                                                  null ||
                                                              invdetails[index]
                                                                  .hUom!
                                                                  .isEmpty
                                                          ? false
                                                          : true,
                                                      child: Text(
                                                          invdetails[index]
                                                                  .hUom ??
                                                              '',
                                                          style:
                                                              subTitleTextStyle()),
                                                    ),
                                                    SizedBox(
                                                      height: 5.h,
                                                    ),
                                                    Visibility(
                                                      visible: invdetails[index]
                                                                      .lUom ==
                                                                  null ||
                                                              invdetails[index]
                                                                  .lUom!
                                                                  .isEmpty
                                                          ? false
                                                          : true,
                                                      child: Text(
                                                          invdetails[index]
                                                                  .lUom ??
                                                              '',
                                                          style:
                                                              subTitleTextStyle()),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 30.h,
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                    invdetails[index].hQty ??
                                                        '',
                                                    style: subTitleTextStyle()),
                                                SizedBox(
                                                  height: 5.h,
                                                ),
                                                Text(
                                                    invdetails[index].lQty ??
                                                        '',
                                                    style: subTitleTextStyle()),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              width: 40.w,
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
                                                    invdetails[index].total ??
                                                        '',
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
                                        )
                                      ],
                                    ),
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: invdetails.length),
                  todaysDeliveryFailed: () => const SizedBox(),
                );
              },
            ),
            SizedBox(
              height: 10.h,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefreshInvoiceDetail(BuildContext context) async {
    context
        .read<TodaysDeliveryDetailsBloc>()
        .add(const ClearTodasDeliveryDetails());
    context.read<TodaysDeliveryDetailsBloc>().add(
        GetTodaysDeliveryDetailsEvent(id: delivery.id ?? '', searchQuery: ''));
  }
}
