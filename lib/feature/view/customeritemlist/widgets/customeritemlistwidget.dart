import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerItemListWidget extends StatelessWidget {
  const CustomerItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CusItemsBloc, CusItemsState>(
      builder: (context, state) {
        return state.when(
          getCusItemsState: (items) => items == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 80.h, width: double.infinity),
                    itemCount: 10,
                  ),
                )
              : items.isEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(top: 250),
                      child: Text(
                        AppLocalizations.of(context)!.noDataFound,
                        style: kfontstyle(),
                      ),
                    )
                  : ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    // height: 55.h,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          items[index].prdCode ?? '',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff7b70ac),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox(
                                          // width: MediaQuery.of(context)
                                          //         .size
                                          //         .width /
                                          //     2,
                                          child: Text(
                                            items[index].prdName ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                /* SizedBox(
                                  width: 50.h,
                                ), */
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            items[index].uomName ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),

                                          /* 
                                      Text(
                                        'Pc',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      ), */
                                        ],
                                      ),
                                      // SizedBox(
                                      //   width: 20.h,
                                      // ),
                                      Column(
                                        children: [
                                          Text(
                                            items[index].pldPrice ?? "",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.end,
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                          /* SizedBox(
                                        height: 10.h,
                                      ),
                                      Text(
                                        '12.00',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      ), */
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey[300],
                            )
                          ],
                        ),
                      ),
                      itemCount: items.length,
                    ),
          getitemsFailedState: () => Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Text(
              AppLocalizations.of(context)!.noDataAvailable,
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
