import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/cubit/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/returnapproval/returnapprovaldetail.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReturnApprovalHeader extends StatefulWidget {
  final LoginUserModel user;
  const ReturnApprovalHeader({super.key, required this.user});

  @override
  State<ReturnApprovalHeader> createState() => _ReturnApprovalHeaderState();
}

class _ReturnApprovalHeaderState extends State<ReturnApprovalHeader> {
  @override
  void initState() {
    context
        .read<ReturnApprovalHeaderBloc>()
        .add(const ClearReturnHeaderState());
    context.read<ReturnApprovalHeaderBloc>().add(const GetReturnApprovalHeaders(
        rotID: /*  widget.user.usrId ?? */ '45'));
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
          "Return",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: BlocBuilder<ReturnApprovalHeaderBloc,
                ReturnApprovalHeaderState>(
              builder: (context, state) {
                return state.when(
                  getReturnApprovalHeaders: (headers) => headers == null
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
                                  context
                                      .read<NavigatetoBackCubit>()
                                      .popFromScreen(false);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          ReturnApprovalDetailScreen(
                                        returnApprovel: headers[index],
                                        user: widget.user,
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
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  headers[index]
                                                          .ithRequestNumber ??
                                                      '',
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
                                                      '${headers[index].cusCode} - ',
                                                      style: kfontstyle(
                                                        fontSize: 11.sp,
                                                        color: const Color(
                                                            0xff2C6B9E),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Text(
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        headers[index]
                                                                .cusName ??
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
                                          Container(
                                            height: 10.h,
                                            width: 10.h,
                                            decoration: BoxDecoration(
                                              color: headers[index]
                                                      .rahApprovalStatus!
                                                      .isEmpty
                                                  ? Colors.red
                                                  : Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
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
                  returnHeaderFailedstate: () => Center(
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
