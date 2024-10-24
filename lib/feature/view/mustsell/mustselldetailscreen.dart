import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_in_model/must_sell_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_header_model/must_sell_header_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_i_json_model/must_sell_i_json_model.dart';
import 'package:customer_connect/feature/state/bloc/mustsellapprove/must_sell_approve_bloc.dart';
import 'package:customer_connect/feature/state/bloc/mustselldetail/must_sell_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/mustsellheader/must_sell_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/mustsellselectedheader/mustsell_approval_selection_cubit.dart';
import 'package:customer_connect/feature/view/mustsell/mustsellheaderscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MustSellDetailScreen extends StatefulWidget {
  final MustSellHeaderModel header;
  final LoginUserModel user;
  const MustSellDetailScreen(
      {super.key, required this.header, required this.user});

  @override
  State<MustSellDetailScreen> createState() => _MustSellDetailScreenState();
}

Timer? debounce;
TextEditingController mustSellDetailSearchCtrl = TextEditingController();

class _MustSellDetailScreenState extends State<MustSellDetailScreen> {
  @override
  void initState() {
    context.read<MustSellDetailBloc>().add(const ClearMustSellDetailsEvent());
    context.read<MustSellDetailBloc>().add(GetMustSellDetailsEvent(
        headerID: widget.header.msaId ?? '', searchQuery: ''));

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
          AppLocalizations.of(context)!.mustSellDetail,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          mustSellDetailSearchCtrl.clear();
          mustSellHeaderSearchCtrl.clear();
          context.read<MustSellHeaderBloc>().add(GetMustSellHeadersEvent(
              mode: selectedMustSellMode, searchQuery: ""));
        },
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 50.h,
                  width: 10,
                  decoration: BoxDecoration(
                      color: const Color(0xfffee8e0),
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${widget.header.msaTransId} | ${widget.header.type}',
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
                                    overflow: TextOverflow.ellipsis,
                                    '${widget.header.rotCode} - ${widget.header.rotName} ${AppLocalizations.of(context)!.route}',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              ],
                            ),
                            /*  Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    '${widget.header.cuscode} - ${selectedLocale?.languageCode == 'en'?widget.header.cusname:widget.header.cusArName}',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                ),
                              ],
                            ), */

                            RichText(
                              text: TextSpan(
                                style:
                                    DefaultTextStyle.of(context).style.copyWith(
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none,
                                        ),
                                children: [
                                  TextSpan(
                                    text: '${widget.header.cuscode} - ',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                  ),
                                  TextSpan(
                                    text: selectedLocale?.languageCode == 'en'
                                        ? widget.header.cusname ?? ''
                                        : widget.header.cusArName ?? '',
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff413434)),
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              widget.header.createdDate ?? '',
                              style: kfontstyle(
                                  fontSize: 10.sp, color: Colors.grey),
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
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: mustSellDetailSearchCtrl,
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
                              mustSellDetailSearchCtrl.clear();
                              context.read<MustSellDetailBloc>().add(
                                  GetMustSellDetailsEvent(
                                      headerID: widget.header.msaId ?? '',
                                      searchQuery: ''));
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
                    context.read<MustSellDetailBloc>().add(
                        GetMustSellDetailsEvent(
                            headerID: widget.header.msaId ?? '',
                            searchQuery: value.trim()));
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Expanded(
              child: Column(
            children: [
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
                            width: 35.w,
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
                  child: BlocBuilder<MustSellDetailBloc, MustSellDetailState>(
                builder: (context, state) {
                  return state.when(
                    getMustSellDetailState: (details) => details == null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: ListView.separated(
                                // physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    ShimmerContainers(
                                        height: 50.h, width: double.infinity),
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
                            : ListView.builder(
                                itemCount: details.length,
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
                                                  details[index].prdCode ?? '',
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
                                                  Text(
                                                    details[index]
                                                                .huom!
                                                                .isEmpty ||
                                                            details[index]
                                                                    .huom ==
                                                                null
                                                        ? "-"
                                                        : details[index].huom ??
                                                            "",
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(
                                                    details[index]
                                                                .luom!
                                                                .isEmpty ||
                                                            details[index]
                                                                    .luom ==
                                                                null
                                                        ? "-"
                                                        : details[index].luom ??
                                                            "",
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: selectedLocale
                                                            ?.languageCode ==
                                                        'en'
                                                    ? 50.w
                                                    : 70.w,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    details[index]
                                                                .msdHQty!
                                                                .isEmpty ||
                                                            details[index]
                                                                    .msdHQty ==
                                                                null
                                                        ? "0"
                                                        : details[index]
                                                                .msdHQty ??
                                                            "",
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  ),
                                                  SizedBox(
                                                    height: 10.h,
                                                  ),
                                                  Text(
                                                    details[index]
                                                                .msdLQty!
                                                                .isEmpty ||
                                                            details[index]
                                                                    .msdLQty ==
                                                                null
                                                        ? "0"
                                                        : details[index]
                                                                .msdLQty ??
                                                            "",
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      index == details.length - 1
                                          ? const SizedBox.shrink()
                                          : Divider(
                                              color: Colors.grey[300],
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                    mustSellDetailsFailedState: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataAvailable,
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ))
            ],
          ))
        ]),
      ),
      bottomNavigationBar: selectedMustSellMode != 'P'
          ? null
          : BlocConsumer<MustSellApproveBloc, MustSellApproveState>(
              listener: (context, state) {
                state.when(
                  mustSellApproveStatusState: (resp) {
                    if (resp != null) {
                      mustSellHeaderSearchCtrl.clear();
                      context
                          .read<MustSellHeaderBloc>()
                          .add(const ClearMustSellHeadersEvent());
                      context.read<MustSellHeaderBloc>().add(
                          GetMustSellHeadersEvent(
                              mode: selectedMustSellMode, searchQuery: ""));
                      mustSellJsonstriongList.clear();
                      context
                          .read<MustsellApprovalSelectionCubit>()
                          .selectedHeadersList([]);
                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(
                              " ${selectedLocale?.languageCode == 'en' ? 'Your request has been successfully actioned' : 'لقد تم تنفيذ طلبك بنجاح'} "),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child: Text(AppLocalizations.of(context)!.ok),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  mustSellApproveFailedState: () {
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(
                            AppLocalizations.of(context)!.somethingWentWrong),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                  },
                  mustSellApproveLoadingEvent: () {
                    showCupertinoModalPopup(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => SizedBox(
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: const PopScope(
                                canPop: true,
                                child: CupertinoActivityIndicator(
                                  animating: true,
                                  color: Colors.red,
                                  radius: 30,
                                ),
                              ),
                            ));
                  },
                );
              },
              builder: (context, state) {
                return SizedBox(
                  height: 42.h,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: selectedMustSellMode == 'P'
                                    ? Colors.red.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (selectedMustSellMode == 'P') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
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
                                              Navigator.pop(context);

                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                      const MustSellLoadingEvent());
                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                    ApproveMustSellEvent(
                                                      approve:
                                                          MustSellApproveInModel(
                                                              jsonString: [
                                                            MustSellIJsonModel(
                                                                msaId: widget
                                                                    .header
                                                                    .msaId,
                                                                status: "R")
                                                          ],
                                                              transId: '',
                                                              userId: widget
                                                                  .user.usrId),
                                                    ),
                                                  );
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.reject,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color: selectedMustSellMode == 'P'
                                    ? Colors.green.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (selectedMustSellMode == 'P') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
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
                                              Navigator.pop(context);
                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                      const MustSellLoadingEvent());

                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                    ApproveMustSellEvent(
                                                      approve:
                                                          MustSellApproveInModel(
                                                              jsonString: [
                                                            MustSellIJsonModel(
                                                                msaId: widget
                                                                    .header
                                                                    .msaId,
                                                                status: "A")
                                                          ],
                                                              transId: '',
                                                              userId: widget
                                                                  .user.usrId),
                                                    ),
                                                  );
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.approve,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
