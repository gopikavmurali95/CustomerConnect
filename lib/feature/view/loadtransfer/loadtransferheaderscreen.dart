import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart';
import 'package:customer_connect/feature/view/loadtransfer/loadtransferdetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadTransferApprovalHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const LoadTransferApprovalHeaderScreen({super.key, required this.user});

  @override
  State<LoadTransferApprovalHeaderScreen> createState() =>
      _LoadTransferApprovalHeaderScreenState();
}

class _LoadTransferApprovalHeaderScreenState
    extends State<LoadTransferApprovalHeaderScreen> {
  @override
  void initState() {
    context
        .read<LoadTransferHeaderBloc>()
        .add(const ClearLoadtransferHeaderEvent());
    context.read<LoadTransferHeaderBloc>().add(
        const GetAllLoadTransferHeadersEvent(
            userID: /* widget.user.usrId?? */ '48'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Load transfer",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<ApprovalCountsBloc>()
              .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
        },
        child: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
                  BlocBuilder<LoadTransferHeaderBloc, LoadTransferHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getAllLoadTransferHeadersState: (headers) => headers == null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
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
                        : ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            LoadTransferDetailScreen(
                                          header: headers[index],
                                          user: widget.user,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 10,
                                        decoration: BoxDecoration(
                                          color: const Color(0xfffee8e0),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
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
                                                    headers[index].ltrReqNo ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        "${headers[index].rotName} - ",
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xff2C6B9E)),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          headers[index]
                                                                  .usrName ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    headers[index]
                                                            .createdDate ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: headers[index]
                                                            .ltrApprovalStatus!
                                                            .isEmpty ||
                                                        headers[index]
                                                                .ltrApprovalStatus !=
                                                            'Approved'
                                                    ? headers[index]
                                                                .ltrApprovalStatus ==
                                                            'Rejected'
                                                        ? Colors.red[300]
                                                        : const Color(
                                                            0xfff7f4e2)
                                                    : const Color(0xffe3f7e2),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  20,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 5),
                                                child: Text(
                                                  headers[index]
                                                          .ltrApprovalStatus ??
                                                      '',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: headers[index]
                                                                  .ltrApprovalStatus ==
                                                              'Rejected'
                                                          ? Colors.white54
                                                          : Colors.black54),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: headers.length),
                    loadTransferHeaderFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
