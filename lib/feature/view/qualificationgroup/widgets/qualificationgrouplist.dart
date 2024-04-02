import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart';
import 'package:flutter/cupertino.dart';
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
              ? const Center(
                  child: CupertinoActivityIndicator(
                    animating: true,
                    color: Colors.red,
                    radius: 30,
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
                              Text(
                                'Offer Packs',
                                style: subTitleTextStyle(),
                              ),
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
