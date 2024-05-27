import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';

import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../state/bloc/loadreqheader/load_req_header_bloc.dart';
import 'loadrequestdetailscreen.dart';

class LoadRequestHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const LoadRequestHeaderScreen({super.key, required this.user});

  @override
  State<LoadRequestHeaderScreen> createState() =>
      _LoadRequestHeaderScreenState();
}

class _LoadRequestHeaderScreenState extends State<LoadRequestHeaderScreen> {
  @override
  void initState() {
    context.read<LoadReqHeaderBloc>().add(const LoadreqClearEvent());
    context
        .read<LoadReqHeaderBloc>()
        .add(const LoadreqSuccessEvent(userId: ''));
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
          "Load Request Header",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<LoadReqHeaderBloc, LoadReqHeaderState>(
              builder: (context, state) {
                return state.when(
                  loadReqheadSuccessState: (headers) => headers == null
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
                                            LoadReqDetailscreen(
                                                user: widget.user,
                                                loadrequest: headers[index])

                                        // LoadTransferDetailScreen(
                                        //   header: headers[index],
                                        //   user: widget.user,
                                        // ),
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
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "hello"
                                                  // headers[index].ltrReqNo
                                                  ,
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                  headers[index].createdDate ??
                                                      '',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // Container(
                                          //   decoration: BoxDecoration(
                                          //     color: headers[index].ltrApprovalStatus!
                                          //         .isEmpty ||
                                          //         headers[index].ltrApprovalStatus !=
                                          //             'Action Taken'
                                          //         ? headers[index].ltrApprovalStatus ==
                                          //         'Rejected'
                                          //         ? Colors.red[300]
                                          //         : const Color(0xfff7f4e2)
                                          //         : const Color(0xffe3f7e2),
                                          //     borderRadius:
                                          //     BorderRadius.circular(
                                          //       20,
                                          //     ),
                                          //   ),
                                          //   child: Padding(
                                          //     padding:
                                          //     const EdgeInsets.symmetric(
                                          //         horizontal: 8,
                                          //         vertical: 5),
                                          //     child: Text(
                                          //       headers[index].ltrApprovalStatus ??
                                          //           '',
                                          //       style: kfontstyle(
                                          //           fontSize: 10.sp,
                                          //           fontWeight: FontWeight.w400,
                                          //           color: headers[index].ltrApprovalStatus ==
                                          //               'Rejected'
                                          //               ? Colors.white54
                                          //               : Colors.black54),
                                          //     ),
                                          //   ),
                                          // )
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
                  loadReqheadFailedState: () => Center(
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
    );
  }
}



Future<void> _onRefreshLoadRequestHeaderScreen(BuildContext context,LoginUserModel model) async
{
  context.read<LoadReqHeaderBloc>().add(const LoadreqClearEvent());
  context.read<LoadReqHeaderBloc>().add(const LoadreqSuccessEvent(userId: ''));

}