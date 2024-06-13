import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/ardetailsceren.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ARHeaderListWidget extends StatelessWidget {
  const ARHeaderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<ArHeaderBloc, ArHeaderState>(
        builder: (context, state) {
          return state.when(
            arHeaderSuccessState: (artotal, arHeaders) => arHeaders == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : arHeaders.isEmpty
                    ? const Center(
                        child: Text('No Data Found'),
                      )
                    : ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                log(arHeaders[index].arhId ?? '');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ARDetailScreen(
                                      arheader: arHeaders[index],
                                    ),
                                  ),
                                );
                              },
                              child: Row(
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
                                        Text(arHeaders[index].arhArNumber ?? '',
                                            style: blueTextStyle()),
                                        Row(
                                          children: [
                                            Text(
                                              '${arHeaders[index].cshCode} - ',
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                color: const Color(0xff2C6B9E),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                arHeaders[index].cshName ?? "",
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                                '${arHeaders[index].cusCode} - ',
                                                style: subTitleTextStyle()),
                                            Expanded(
                                              child: Text(
                                                  arHeaders[index].cusName ??
                                                      "",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: subTitleTextStyle()),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${arHeaders[index].arhPayMode?.trim()} | Route ${arHeaders[index].rotName} | ${arHeaders[index].date} | ${arHeaders[index].time}',
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
                                        arHeaders[index].arhCollectedAmount ??
                                            "",
                                        style: kfontstyle(
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        height: 14.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            color: index % 2 == 0
                                                ? const Color(0xffe3f7e2)
                                                : const Color(0xfff7f4e2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            arHeaders[index].arhPayMode ?? '',
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
                            ),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: arHeaders.length),
            arHeaderFailedState: () => SizedBox(
              height: MediaQuery.of(context).size.height / 1.4,
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
////
