import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/ardetailsceren.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsightArListWidget extends StatelessWidget {
  const InsightArListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<CusInsArHeaderBloc, CusInsArHeaderState>(
        builder: (context, state) {
          return state.when(
            getArHeadersState: (headers, totals) => headers == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
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
                        itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ARDetailScreen(
                                      arheader: ArHeaderModel(
                                          arhBalanceAmount:
                                              headers[index].balanceAmount,
                                          arhCollectedAmount:
                                              headers[index].collectedAmount,
                                          arhPayMode: headers[index].payMode,
                                          arhPayType: headers[index].payType,
                                          arpChequeDate:
                                              headers[index].chequeDate,
                                          arpChequeNo: headers[index].chequeNo,
                                          bankName: headers[index].bankName,
                                          cshCode: headers[index].cshCode,
                                          cshId: headers[index].cshId,
                                          cshName: headers[index].cshName,
                                          cusCode: headers[index].cusCode,
                                          cusId: headers[index].cusId,
                                          cusName: headers[index].cusName,
                                          date: headers[index].date,
                                          image: headers[index].arpImage1,
                                          rotCode: headers[index].rotCode,
                                          rotId: headers[index].rotId,
                                          rotName: headers[index].rotName,
                                          time: headers[index].time,
                                          arhArNumber:
                                              headers[index].arhArNumber,
                                          arhId: headers[index].arhId),
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
                                        Text(
                                          headers[index].arhArNumber ?? '',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff2C6B9E),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          '${headers[index].date} | ${headers[index].time}',
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
                                        headers[index].collectedAmount ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Container(
                                        height: 14.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            color: /* index % 2 == 0
                                            ? */
                                                const Color(
                                                    0xffe3f7e2) /* : const Color(0xfff7f4e2) */,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            headers[index].payType ?? '',
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
                        itemCount: headers.length),
            getArHeadersFailedState: () => SizedBox(
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
