import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/asset_add_approval_in_model/asset_add_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssetAddingApprovalHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const AssetAddingApprovalHeaderScreen({super.key, required this.user});

  @override
  State<AssetAddingApprovalHeaderScreen> createState() =>
      _AssetAddingApprovalHeaderScreenState();
}

List<bool?> statuslist = [];
int loadingCount = 0;

class _AssetAddingApprovalHeaderScreenState
    extends State<AssetAddingApprovalHeaderScreen> {
  @override
  void initState() {
    loadingCount = 0;
    context
        .read<AssetAddInApprovalHeaderBloc>()
        .add(const ClearAllRequestHeadersState());

    context.read<AssetAddInApprovalHeaderBloc>().add(
        const GetallAssetAddingRequestHeadersEvent(
            userId: /* widget.user.usrId ?? */ '64'));

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
          "Approvals",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: BlocListener<AssetAddInApprovalHeaderBloc,
                  AssetAddInApprovalHeaderState>(
            listener: (context, state) {
              state.when(
                getAllAssetAddingHeadersState: (headers) {
                  if (headers != null) {
                    statuslist = List.generate(headers.length, (index) => null);
                  }
                },
                assetAddingHeaderFailedState: () {},
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BlocBuilder<AssetAddInApprovalHeaderBloc,
                  AssetAddInApprovalHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getAllAssetAddingHeadersState: (headers) => headers == null
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
                                    /*  Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DisputeNoteDetailScreen(
                                                      disputenote: headers[index],
                                                      user: widget.user,
                                                    ),
                                                  ),
                                                ); */
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor:
                                              const Color(0xffDB95B5),
                                          child: ClipOval(
                                            child: SizedBox.fromSize(
                                              size: MediaQuery.of(context).size,
                                              child: Image.network(
                                                headers[index].image ?? '',
                                                height: 20.h,
                                                width: 20.w,
                                                fit: BoxFit.cover,
                                                errorBuilder: (context, error,
                                                        stackTrace) =>
                                                    const SizedBox(),
                                              ),
                                            ),
                                          ),
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
                                                    headers[index].rsnName ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '${headers[index].astCode} - ',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                              0xff2C6B9E,
                                                            ),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          headers[index]
                                                                  .astName ??
                                                              '',
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
                                                        '${headers[index].cusCode} - ',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
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
                                                    '${headers[index].rotCode} |${headers[index].createdDate}',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.grey),
                                                  ),
                                                  BlocConsumer<
                                                      AssetAddingApprovalAndRjectBlocBloc,
                                                      AssetAddingApprovalAndRjectBlocState>(
                                                    listener: (context, state) {
                                                      state.when(
                                                        assetAddingApprvalState:
                                                            (response,
                                                                isApproval) {
                                                          if (response !=
                                                              null) {
                                                            Navigator.pop(
                                                                context);
                                                            // if (isApproval) {
                                                            showCupertinoDialog(
                                                              context: context,
                                                              builder: (context) =>
                                                                  CupertinoAlertDialog(
                                                                title:
                                                                    const Text(
                                                                        'Alert'),
                                                                content: Text(
                                                                    response.status ??
                                                                        ''),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      context
                                                                          .read<
                                                                              AssetAddInApprovalHeaderBloc>()
                                                                          .add(const GetallAssetAddingRequestHeadersEvent(
                                                                              userId: /* widget.user.usrId ?? */ '64'));
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: const Text(
                                                                        'Proceed'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                            // }
                                                          }
                                                        },
                                                        assetAddingApprovalFailedState:
                                                            () {
                                                          Navigator.pop(
                                                              context);
                                                          showCupertinoDialog(
                                                            context: context,
                                                            builder: (context) =>
                                                                CupertinoAlertDialog(
                                                              title: const Text(
                                                                  'Alert'),
                                                              content: const Text(
                                                                  "something went wrong, please try again later"),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    context
                                                                        .read<
                                                                            AssetAddInApprovalHeaderBloc>()
                                                                        .add(
                                                                          const GetallAssetAddingRequestHeadersEvent(
                                                                              userId: /* widget.user.usrId ?? */
                                                                                  '64'),
                                                                        );
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child:
                                                                      const Text(
                                                                          'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                        assetAddingApprovalLoadingState:
                                                            () {
                                                          if (loadingCount ==
                                                              0) {
                                                            loadingCount = 1;
                                                            showCupertinoModalPopup(
                                                                context:
                                                                    context,
                                                                barrierDismissible:
                                                                    false,
                                                                builder:
                                                                    (context) =>
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context)
                                                                              .size
                                                                              .height,
                                                                          width: MediaQuery.of(context)
                                                                              .size
                                                                              .width,
                                                                          child:
                                                                              const PopScope(
                                                                            canPop:
                                                                                true,
                                                                            child:
                                                                                CupertinoActivityIndicator(
                                                                              animating: true,
                                                                              color: Colors.red,
                                                                              radius: 30,
                                                                            ),
                                                                          ),
                                                                        ));
                                                          }
                                                        },
                                                      );
                                                    },
                                                    builder: (context, state) {
                                                      return Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Transform.scale(
                                                            scale: 0.8,
                                                            child: Row(
                                                              children: [
                                                                Radio(
                                                                  fillColor: MaterialStateProperty.resolveWith<
                                                                      Color>((Set<
                                                                          MaterialState>
                                                                      states) {
                                                                    return (statuslist[index] ==
                                                                            true)
                                                                        ? const Color(
                                                                            0xff0075ff)
                                                                        : Colors
                                                                            .grey;
                                                                  }),
                                                                  /* activeColor: isselected == true
                                                                                                                                                                                                                        ? const Color(0xff0075ff)
                                                                                                                                                                                                                        : Colors.grey, */
                                                                  value: statuslist[
                                                                              index] ==
                                                                          null
                                                                      ? false
                                                                      : statuslist[index] ==
                                                                              true
                                                                          ? true
                                                                          : false,
                                                                  groupValue:
                                                                      true,
                                                                  onChanged:
                                                                      (value) {
                                                                    showCupertinoDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              CupertinoAlertDialog(
                                                                        title: const Text(
                                                                            'Alert'),
                                                                        content:
                                                                            const Text("Do you Want to Approve this product"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              setState(() {});
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              statuslist[index] = true;
                                                                              loadingCount = 0;
                                                                              setState(() {});
                                                                              context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                              context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                    AssetAddingApproveEvent(
                                                                                      approve: AssetAddApprovalInModel(reqId: headers[index].aahId, serialNum: headers[index].aahSlno, userId: widget.user.usrId),
                                                                                    ),
                                                                                  );

                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Proceed'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                Text(
                                                                  'Approve',
                                                                  style:
                                                                      kfontstyle(),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Transform.scale(
                                                            scale: 0.8,
                                                            child: Row(
                                                              children: [
                                                                Radio(
                                                                  fillColor: MaterialStateProperty.resolveWith<
                                                                      Color>((Set<
                                                                          MaterialState>
                                                                      states) {
                                                                    return (statuslist[index] !=
                                                                                null &&
                                                                            !statuslist[
                                                                                index]!)
                                                                        ? const Color(
                                                                            0xff0075ff)
                                                                        : Colors
                                                                            .grey;
                                                                  }),
                                                                  /*  activeColor: isselected == false
                                                                                                                                                                                                                        ? const Color(0xff0075ff)
                                                                                                                                                                                                                        : Colors.grey, */
                                                                  value: statuslist[
                                                                              index] ==
                                                                          null
                                                                      ? true
                                                                      : statuslist[index] ==
                                                                              true
                                                                          ? true
                                                                          : false,
                                                                  groupValue:
                                                                      false,
                                                                  onChanged:
                                                                      (value) {
                                                                    showCupertinoDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              CupertinoAlertDialog(
                                                                        title: const Text(
                                                                            'Alert'),
                                                                        content:
                                                                            const Text("Do you Want to Reject this product"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              setState(() {});
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              statuslist[index] = false;
                                                                              loadingCount = 0;
                                                                              setState(() {});

                                                                              context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                              context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                    AssetAddingApproveEvent(
                                                                                      approve: AssetAddApprovalInModel(reqId: headers[index].aahId, serialNum: null, userId: widget.user.usrId),
                                                                                    ),
                                                                                  );
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Proceed'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );

                                                                    /* context
                                                                                                                                                                                          .read<
                                                                                                                                                                                              AapprovalOrRejectRadioCubit>()
                                                                                                                                                                                          .changeApprovalStatus(
                                                                                                                                                                                              statuslist[index]); */
                                                                  },
                                                                ),
                                                                Text(
                                                                  'Reject',
                                                                  style:
                                                                      kfontstyle(),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
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
                    assetAddingHeaderFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}
