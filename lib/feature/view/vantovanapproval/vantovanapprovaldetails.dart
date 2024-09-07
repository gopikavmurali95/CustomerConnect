import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_in_paras/van_to_van_approval_in_paras.dart';
import 'package:customer_connect/feature/data/models/van_to_van_header_model/van_to_van_header_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_product_model/van_to_van_product_model.dart';
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VanToVanApprovalDetails extends StatefulWidget {
  final LoginUserModel user;
  final VanToVanHeaderModel vanToVanHeader;
  final String currentMode;
  const VanToVanApprovalDetails(
      {super.key,
      required this.user,
      required this.vanToVanHeader,
      required this.currentMode});

  @override
  State<VanToVanApprovalDetails> createState() =>
      _VanToVanApprovalDetailsState();
}

List<bool?> statuslist = [];
int loadingCount = 0;
int totalcount = 0;
int approvedCount = 0;
List<VanToVanProductModel?> approvedProducts = [];

Timer? debounce;
TextEditingController _vantovanDetailCtrl = TextEditingController();

class _VanToVanApprovalDetailsState extends State<VanToVanApprovalDetails> {
  @override
  void initState() {
    totalcount = 0;
    approvedCount = 0;
    _vantovanDetailCtrl.clear();
    context.read<VanToVanDetailsBloc>().add(const clearVanToVanDetailEvent());
    context.read<VanToVanDetailsBloc>().add(GetVanToVanDetailEvent(
        reqID: widget.vanToVanHeader.vvhId ?? '', searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // log(widget.vanToVanHeader.userID ?? '');
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            context.read<VanToVanHeaderBloc>().add(getVanToVanHeaderEvent(
              userID: widget.vanToVanHeader.userID ?? '',
              mode: widget.currentMode,
              searchQuery: ''));

            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.truck_to_truck} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        // canPop: false,
        onPopInvoked: (didPop) {
          context.read<VanToVanHeaderBloc>().add(getVanToVanHeaderEvent(
              userID: widget.vanToVanHeader.userID ?? '',
              mode: widget.currentMode,
              searchQuery: ''));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xfffee8e0),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.vanToVanHeader.vvhTransId}',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            color: const Color(0xff2C6B9E),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '${widget.vanToVanHeader.vvhFromRot} - ',
                              style: kfontstyle(
                                fontSize: 11.sp,
                                color: const Color(0xff2C6B9E),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                "${widget.vanToVanHeader.vvhToRot}",
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
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
                          '${widget.vanToVanHeader.createdDate} ',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: widget.vanToVanHeader.approvalStatus!.isEmpty ||
                              widget.vanToVanHeader.approvalStatus != 'Approved'
                          ? widget.vanToVanHeader.approvalStatus == 'Rejected'
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
                        selectedLocale?.languageCode == "en"
                            ? widget.vanToVanHeader.approvalStatus ?? ''
                            : widget.vanToVanHeader.approvalArStatus ?? '',
                        style: kfontstyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: widget.vanToVanHeader.approvalStatus ==
                                    'Rejected'
                                ? Colors.white54
                                : Colors.black54),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: _vantovanDetailCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: AppLocalizations.of(context)!.searchHere,
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (_vantovanDetailCtrl.text.isNotEmpty) {
                                  _vantovanDetailCtrl.clear();

                                  context
                                      .read<VanToVanDetailsBloc>()
                                      .add(const clearVanToVanDetailEvent());
                                  context.read<VanToVanDetailsBloc>().add(
                                      GetVanToVanDetailEvent(
                                          reqID:
                                              widget.vanToVanHeader.vvhId ?? '',
                                          searchQuery: ''));
                                }
                              },
                              icon: Icon(
                                Icons.clear,
                                size: 10.sp,
                              )),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 14.sp,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: /* InputBorder
                              .none  */
                        OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                  onChanged: (value) {
                    debounce = Timer(
                        const Duration(
                          milliseconds: 500,
                        ), () async {
                      context.read<VanToVanDetailsBloc>().add(
                          GetVanToVanDetailEvent(
                              reqID: widget.vanToVanHeader.vvhId ?? '',
                              searchQuery: value));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 30.h,
              width: double.infinity,
              color: const Color(0xfff5f5f5),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.item,
                      style: kfontstyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.uom,
                          style: kfontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                        SizedBox(
                          width: 40.w,
                        ),
                        Text(
                          AppLocalizations.of(context)!.qty,
                          style: kfontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: BlocListener<VanToVanDetailsBloc, VanToVanDetailsState>(
                  listener: (context, state) {
                state.when(
                  getVanToVanDetailsState: ((details) {
                    if (details != null) {
                      // _totalcount = details.length;
                      approvedProducts =
                          List.generate(details.length, (index) => null);
                      statuslist.clear();

                      statuslist /* length = details.length; */
                          = List.generate(details.length, (index) => null);
                      for (int i = 0; i < details.length; i++) {
                        if (details[i].status!.isNotEmpty) {
                          approvedCount++;
                          if (details[i].status == 'Approved') {
                            statuslist[i] = true;
                          } else if (details[i].status == 'Rejected') {
                            statuslist[i] = false;
                          } else {
                            statuslist[i] = null;
                          }
                        }
                      }
                    }
                  }),
                  vanToVanDetailFailedState: () {},
                );
              }, child: BlocBuilder<VanToVanDetailsBloc, VanToVanDetailsState>(
                builder: (context, state) {
                  return state.when(
                    getVanToVanDetailsState: (details) => details == null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        : details.isEmpty
                            ? Center(
                                child: Text(
                                  AppLocalizations.of(context)!.noDataFound,
                                  style: kfontstyle(),
                                ),
                              )
                            : ListView.separated(
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  details[index].prdCode ?? ' ',
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff7b70ac),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  selectedLocale
                                                              ?.languageCode ==
                                                          "en"
                                                      ? details[index]
                                                              .prdName ??
                                                          ''
                                                      : details[index]
                                                              .prdArName ??
                                                          '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black54),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                children: [
                                                   Text(details[index].vvdHuom!.isEmpty ||
                                                               details[index].vvdHuom == null ? 
                                                "-": details[index].vvdHuom ?? "",style: kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black54) ,),
                                                  // Text(
                                                  //   details[index].vvdHuom ??
                                                  //       '',
                                                  //   style: kfontstyle(
                                                  //       fontSize: 12.sp,
                                                  //       fontWeight:
                                                  //           FontWeight.w400,
                                                  //       color: Colors.black54),
                                                  // ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(details[index].vvdLuom!.isEmpty ||
                                                               details[index].vvdLuom == null ? 
                                                "-": details[index].vvdLuom ?? "",style: kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black54) ,), 
                                                  // Text(
                                                  //   details[index].vvdLuom ??
                                                  //       '',
                                                  //   style: kfontstyle(
                                                  //       fontSize: 12.sp,
                                                  //       fontWeight:
                                                  //           FontWeight.w400,
                                                  //       color: Colors.black54),
                                                  // ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 50.w,
                                              ),
                                              Column(
                                                children: [
                                                  Text(details[index].vvdHQty!.isEmpty ||
                                                               details[index].vvdHQty == null ? 
                                                "0": details[index].vvdHQty ?? "",style: kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black54) ,),
                                                  // Text(
                                                  //   details[index].vvdHQty ??
                                                  //       '',
                                                  //   style: kfontstyle(
                                                  //       fontSize: 12.sp,
                                                  //       fontWeight:
                                                  //           FontWeight.w400,
                                                  //       color: Colors.black54),
                                                  // ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                   Text(details[index].vvdLQty!.isEmpty ||
                                                               details[index].vvdLQty == null ? 
                                                "0": details[index].vvdLQty ?? "",style: kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: Colors
                                                                        .black54) ,),
                                                  // Text(
                                                  //   details[index].vvdLQty ??
                                                  //       '',
                                                  //   style: kfontstyle(
                                                  //       fontSize: 12.sp,
                                                  //       fontWeight:
                                                  //           FontWeight.w400,
                                                  //       color: Colors.black54),
                                                  // ),
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      BlocConsumer<VanToVanApprovalBloc,
                                          VanToVanApprovalState>(
                                        listener: (context, state) {
                                          state.when(
                                            getVanToVanApproval: (response) {
                                              if (response != null) {
                                                // x

                                                if (loadingCount == 1) {
                                                  loadingCount = 0;
                                                  Navigator.pop(context);
                                                  showCupertinoDialog(
                                                    context: context,
                                                    builder: (context) =>
                                                        CupertinoAlertDialog(
                                                      title: Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .alert),
                                                      content: Text(selectedLocale
                                                                  ?.languageCode ==
                                                              "en"
                                                          ? response.status ??
                                                              ''
                                                          : response.arStatus ??
                                                              ''),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () {
                                                            approvedCount++;

                                                            Navigator.pop(
                                                                context);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Text(
                                                              AppLocalizations.of(
                                                                      context)!
                                                                  .ok),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                }
                                              }
                                            },
                                            vanToVanApprovalFailedstate: () {
                                              Navigator.pop(context);
                                              showCupertinoDialog(
                                                  context: context,
                                                  builder:
                                                      (context) =>
                                                          CupertinoAlertDialog(
                                                            title: Text(
                                                                AppLocalizations.of(
                                                                        context)!
                                                                    .alert),
                                                            content: Text(
                                                                AppLocalizations.of(
                                                                        context)!
                                                                    .somethingWentWrong),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () {
                                                                  context.read<VanToVanDetailsBloc>().add(GetVanToVanDetailEvent(
                                                                      reqID: widget
                                                                              .vanToVanHeader
                                                                              .vvhId ??
                                                                          '',
                                                                      searchQuery:
                                                                          ''));
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: Text(
                                                                    AppLocalizations.of(
                                                                            context)!
                                                                        .ok),
                                                              )
                                                            ],
                                                          ));
                                            },
                                            vanToVanApprovalLoadingState: () {
                                              if (loadingCount == 0) {
                                                loadingCount = 1;

                                                showCupertinoModalPopup(
                                                    context: context,
                                                    barrierDismissible: false,
                                                    builder: (context) =>
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .height,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          child: const PopScope(
                                                              canPop: true,
                                                              child:
                                                                  CupertinoActivityIndicator(
                                                                animating: true,
                                                                color:
                                                                    Colors.red,
                                                                radius: 30,
                                                              )),
                                                        ));
                                              }
                                            },
                                          );
                                        },
                                        builder: (context, state) {
                                          return SizedBox(
                                              child:
                                                  widget.vanToVanHeader
                                                              .approvalStatus ==
                                                          'Pending'
                                                      ? Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              child: Row(
                                                                children: [
                                                                  InkWell(
                                                                    onTap: () {
                                                                      setState(
                                                                          () {
                                                                        statuslist[index] =
                                                                            true;
                                                                        loadingCount =
                                                                            0;

                                                                        setState(
                                                                            () {});
                                                                        approvedProducts[index] =
                                                                            VanToVanProductModel(
                                                                          vvdId:
                                                                              details[index].vvdId,
                                                                          hqty:
                                                                              details[index].vvdHQty,
                                                                          lqty:
                                                                              details[index].vvdLQty,
                                                                          status:
                                                                              'A',
                                                                        );
                                                                      });
                                                                    },
                                                                    child: Row(
                                                                      children: [
                                                                        Radio(
                                                                          fillColor:
                                                                              MaterialStateProperty.resolveWith<Color>((states) {
                                                                            return (statuslist[index] == true)
                                                                                ? Colors.green.shade300
                                                                                : Colors.grey;
                                                                          }),
                                                                          value: statuslist[index] == null
                                                                              ? false
                                                                              : statuslist[index] == true
                                                                                  ? true
                                                                                  : false,
                                                                          groupValue:
                                                                              true,
                                                                          onChanged:
                                                                              (value) {
                                                                            statuslist[index] =
                                                                                true;
                                                                            loadingCount =
                                                                                0;

                                                                            setState(() {});
                                                                            approvedProducts[index] =
                                                                                VanToVanProductModel(
                                                                              vvdId: details[index].vvdId,
                                                                              hqty: details[index].vvdHQty,
                                                                              lqty: details[index].vvdLQty,
                                                                              status: 'A',
                                                                            );
                                                                          },
                                                                        ),
                                                                        Text(
                                                                          AppLocalizations.of(context)!
                                                                              .approve,
                                                                          style:
                                                                              kfontstyle(),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              child: InkWell(
                                                                onTap: () {
                                                                  setState(() {
                                                                    statuslist[
                                                                            index] =
                                                                        false;
                                                                    loadingCount =
                                                                        0;
                                                                    setState(
                                                                        () {});
                                                                    approvedProducts[
                                                                            index] =
                                                                        VanToVanProductModel(
                                                                      vvdId: details[
                                                                              index]
                                                                          .vvdId,
                                                                      hqty: details[
                                                                              index]
                                                                          .vvdHQty,
                                                                      lqty: details[
                                                                              index]
                                                                          .vvdLQty,
                                                                      status:
                                                                          'R',
                                                                    );
                                                                  });
                                                                },
                                                                child: Row(
                                                                  children: [
                                                                    Radio(
                                                                      fillColor:
                                                                          MaterialStateProperty.resolveWith<Color>(
                                                                              (states) {
                                                                        return (statuslist[index] != null &&
                                                                                !statuslist[index]!)
                                                                            ? Colors.red.shade300
                                                                            : Colors.grey;
                                                                      }),
                                                                      value: statuslist[index] ==
                                                                              null
                                                                          ? true
                                                                          : statuslist[index] == true
                                                                              ? true
                                                                              : false,
                                                                      groupValue:
                                                                          false,
                                                                      onChanged:
                                                                          (value) {
                                                                        statuslist[index] =
                                                                            false;
                                                                        loadingCount =
                                                                            0;
                                                                        setState(
                                                                            () {});
                                                                        approvedProducts[index] =
                                                                            VanToVanProductModel(
                                                                          vvdId:
                                                                              details[index].vvdId,
                                                                          hqty:
                                                                              details[index].vvdHQty,
                                                                          lqty:
                                                                              details[index].vvdLQty,
                                                                          status:
                                                                              'R',
                                                                        );
                                                                      },
                                                                    ),
                                                                    Text(
                                                                      AppLocalizations.of(
                                                                              context)!
                                                                          .reject,
                                                                      style:
                                                                          kfontstyle(),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      : Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              child: Row(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Radio(
                                                                        fillColor:
                                                                            MaterialStateProperty.resolveWith<Color>((states) {
                                                                          return (statuslist[index] == true)
                                                                              ? Colors.green.shade300
                                                                              : Colors.grey;
                                                                        }),
                                                                        value: statuslist[index] ==
                                                                                null
                                                                            ? false
                                                                            : statuslist[index] == true
                                                                                ? true
                                                                                : false,
                                                                        groupValue:
                                                                            true,
                                                                        onChanged:
                                                                            (value) {},
                                                                      ),
                                                                      Text(
                                                                        AppLocalizations.of(context)!
                                                                            .approve,
                                                                        style:
                                                                            kfontstyle(),
                                                                      )
                                                                    ],
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
                                                                            Color>(
                                                                        (states) {
                                                                      return (statuslist[index] != null &&
                                                                              !statuslist[
                                                                                  index]!)
                                                                          ? Colors
                                                                              .red
                                                                              .shade300
                                                                          : Colors
                                                                              .grey;
                                                                    }),
                                                                    value: statuslist[index] ==
                                                                            null
                                                                        ? true
                                                                        : statuslist[index] ==
                                                                                true
                                                                            ? true
                                                                            : false,
                                                                    groupValue:
                                                                        false,
                                                                    onChanged:
                                                                        (value) {},
                                                                  ),
                                                                  Text(
                                                                    AppLocalizations.of(
                                                                            context)!
                                                                        .reject,
                                                                    style:
                                                                        kfontstyle(),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ));
                                        },
                                      )
                                    ],
                                  ),
                                ),
                                separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                                itemCount: details.length,
                              ),
                    vanToVanDetailFailedState: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataAvailable,
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              )),
            ),
            SizedBox(
              height: 40.h,
              width: double.infinity,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Flexible(
                            flex: 1, fit: FlexFit.tight, child: SizedBox()),
                        SizedBox(
                          width: 10.w,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Visibility(
                            visible:  widget.vanToVanHeader.approvalStatus ==
                                    'Pending'?true:false,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: widget.vanToVanHeader.approvalStatus ==
                                      'Pending'
                                  ? Colors.green.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                if (widget.vanToVanHeader.approvalStatus ==
                                    'Pending') {
                                  if (approvedProducts.contains(null)) {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) => CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!.alert),
                                        content: Text(AppLocalizations.of(
                                                context)!
                                            .pleaseMakeSureToApproveAndReject),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              // Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!.ok),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) => CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!.alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .doyouWantToProceed),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .cancel),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              loadingCount = 0;
                                              setState(() {});
                                              Navigator.pop(context);
                            
                                              context
                                                  .read<VanToVanApprovalBloc>()
                                                  .add(
                                                      const VanToVanApprovalLoadingEvent());
                            
                                              context
                                                  .read<VanToVanApprovalBloc>()
                                                  .add(GetVanToVanApprovalEent(
                                                      approvalIn:
                                                          VanToVanApprovalInParas(
                                                              products:
                                                                  approvedProducts,
                                                              userID: widget
                                                                  .vanToVanHeader
                                                                  .userID,
                                                              reqID: widget
                                                                  .vanToVanHeader
                                                                  .vvhId)));
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                }
                              },
                              child: Text(
                                AppLocalizations.of(context)!.confirm,
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
