import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/vantovanapproval/vantovanapprovaldetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VanToVanApprovalHeader extends StatefulWidget {
  final LoginUserModel user;
  const VanToVanApprovalHeader({super.key, required this.user});

  @override
  State<VanToVanApprovalHeader> createState() => _VanToVanApprovalHeaderState();
}

class _VanToVanApprovalHeaderState extends State<VanToVanApprovalHeader> {
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
          "Van To Van Approval  ",
          style: appHeading(),
        ),
      ),
      body: BlocBuilder<VanToVanHeaderBloc, VanToVanHeaderState>(
        builder: (context, state) {
          return state.when(
              getVanToVanHeaderState: (pChange) => pChange == null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ShimmerContainers(
                              height: 60.h, width: double.infinity),
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: 10),
                    )
                  : Column(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.separated(
                              itemBuilder: (context, index) => GestureDetector(
                                    onTap: () {
                                      context
                                          .read<NavigatetoBackCubit>()
                                          .popFromScreen(false);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  VanToVanApprovalDetails(
                                                    vanToVanHeader:
                                                        pChange[index],
                                                    user: widget.user,
                                                  )));
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 50,
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
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${pChange[index].vvhToRot}',
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
                                                    '${pChange[index].vvhFromRot} - ',
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      "${pChange[index].vvhToRot}",
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff413434)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              /*Text(
                                                overflow: TextOverflow.ellipsis,
                                                "${pChange[index].status}",
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),*/
                                              Text(
                                                '${pChange[index].createdDate} ',
                                                style: kfontstyle(
                                                    fontSize: 10.sp,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: pChange[index]
                                                        .approvalStatus!
                                                        .isEmpty ||
                                                    pChange[index]
                                                            .approvalStatus !=
                                                        'Approved'
                                                ? pChange[index]
                                                            .approvalStatus ==
                                                        'Rejected'
                                                    ? Colors.red[300]
                                                    : const Color(0xfff7f4e2)
                                                : const Color(0xffe3f7e2),
                                            borderRadius: BorderRadius.circular(
                                              20,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8, vertical: 5),
                                            child: Text(
                                              pChange[index].approvalStatus ??
                                                  '',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: pChange[index]
                                                              .approvalStatus ==
                                                          'Rejected'
                                                      ? Colors.white54
                                                      : Colors.black54),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: pChange.length),
                        ))
                      ],
                    ),
              vanToVanHeaderFailedstate: () => Center(
                    child: Text(
                      'No Data Available',
                      style: kfontstyle(),
                    ),
                  ));
        },
      ),
    );
  }
}
