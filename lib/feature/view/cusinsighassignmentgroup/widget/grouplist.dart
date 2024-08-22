import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerInsightGroupList extends StatelessWidget {
  const CustomerInsightGroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerInsightGroupBloc, CustomerInsightGroupState>(
      builder: (context, state) {
        return state.when(
          getCusInsightGroupSatet: (groupdata) => groupdata == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ListView.separated(
                      // physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) => ShimmerContainers(
                          height: 60.h, width: double.infinity),
                      separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                      itemCount: 10),
                )
              : groupdata.isEmpty
                  ? Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataFound,
                        style: kfontstyle(),
                      ),
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.items,
                              style: countHeading(),
                            ),
                            Text(
                              groupdata.length.toString(),
                              style: countHeading(),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12.h,
                        ),
                        ListView.builder(
                            // physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: groupdata.length,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    groupdata[index].prdCode ?? '',
                                    style: loadTextStyle(),
                                  ),
                                  Text(
                                    selectedLocale?.languageCode == "en"
                                        ? groupdata[index].prdName ?? ''
                                        : groupdata[index].prdArName ?? '',
                                    style: subTitleTextStyle(),
                                  ),
                                  /* Text(
                                    'Offer Packs',
                                    style: subTitleTextStyle(),
                                  ), */
                                  const Divider()
                                ],
                              );
                            }),
                      ],
                    ),
          customerInsightGroupFailedState: () => Center(
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
