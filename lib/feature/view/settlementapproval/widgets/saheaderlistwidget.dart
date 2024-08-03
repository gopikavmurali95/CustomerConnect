import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart';
import 'package:customer_connect/feature/view/settlementapproval/settlementapprovaldetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettlementApprovalHeaderListWidget extends StatelessWidget {
  const SettlementApprovalHeaderListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettlementApprovalHeaderBloc,
        SettlementApprovalHeaderState>(
      builder: (context, state) {
        return state.when(
            getSettlementApprovalHeader: (headers) => headers == null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: ListView.separated(
                        itemBuilder: (context, index) => ShimmerContainers(
                            height: 60.h, width: double.infinity),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10),
                  )
                : headers.isEmpty
                    ? Center(
                        child: Text(
                          "No Data Found",
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        itemCount: headers.length,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SettlementApprovalDetailScreen(
                                          header: headers[index],
                                        )));
                          },
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 65,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfffee8e0),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Expanded(
                                      child: Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${headers[index].rotCode ?? ''} - ${headers[index].rotName ?? ''}",
                                            //'Tfsh0$index - RTL route $index',
                                            style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff2C6B9E),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  headers[index].usrName ?? '',
                                                  //'Tfsh03U03 - Fayis M ',
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
                                              Expanded(
                                                child: Text(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  headers[index].createdDate ??
                                                      '',
                                                  //'31 May 2024 | 10:35',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff413434)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "${headers[index].rotType}",
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ))
                                    ],
                                  )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                      ),
            settlementApprovalHeaderFailedState: () => Center(
                  child: Text(
                    'No Data Available in header',
                    style: kfontstyle(),
                  ),
                ));
      },
    );
  }
}
