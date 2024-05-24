import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QualificationGroupList extends StatelessWidget {
  const QualificationGroupList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QualificationGroupBloc, QualificationGroupState>(
      builder: (context, state) {
        return state.when(
          getGroupwiseData: (groupdata) => groupdata == null
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
                        'No Data Found',
                        style: kfontstyle(),
                      ),
                    )
                  : Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Items',
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
                                    groupdata[index].prdName ?? '',
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
          groupWiseDataFailed: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
