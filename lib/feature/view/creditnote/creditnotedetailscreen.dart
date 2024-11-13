import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/credit_note_header_model/credit_note_header_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart';
import 'package:customer_connect/feature/view/creditnote/creditnoteheaderscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreditNoteDetailScreen extends StatefulWidget {
  final CreditNoteHeaderModel creditNote;
  final LoginUserModel user;
  final String currentMode;
  const CreditNoteDetailScreen(
      {super.key,
      required this.creditNote,
      required this.user,
      required this.currentMode});

  @override
  State<CreditNoteDetailScreen> createState() => _CreditNoteDetailScreenState();
}

TextEditingController _remarksctrls = TextEditingController();
TextEditingController _creditDetailtrls = TextEditingController();
Timer? debounce;

class _CreditNoteDetailScreenState extends State<CreditNoteDetailScreen> {
  @override
  void initState() {
    _creditDetailtrls.clear();
    _remarksctrls = TextEditingController();

    context
        .read<CreditNoteDetailBloc>()
        .add(const ClearCreditNoteDetailEvent());
    context.read<CreditNoteDetailBloc>().add(GetCreditNoteDetailsEvent(
        reqId: widget.creditNote.cnhId ?? '', searchQuery: ''));
    super.initState();
  }

  @override
  void dispose() {
    _remarksctrls.dispose();
    super.dispose();
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
            context.read<CreditNoteHeaderBloc>().add(
                GetAllCreditNoteHeadersEvent(
                    userId: widget.user.usrId ?? '',
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
          "${AppLocalizations.of(context)!.credit_memo} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          _creditDetailtrls.clear();
          creditNoteHSearch.clear();
          context.read<CreditNoteHeaderBloc>().add(GetAllCreditNoteHeadersEvent(
              userId: widget.user.usrId ?? '',
              mode: widget.currentMode,
              searchQuery: ''));
        },
        child: BlocConsumer<CreditNoteApprovalAndRejectBloc,
            CreditNoteApprovalAndRejectState>(
          listener: (context, state) {
            state.when(
              creditNoteActionTakenState: (resp, isApprove) {
                if (resp != null && isApprove != null) {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (context) {
                      if(Platform.isIOS)
                      {
                        return  PopScope(
                      canPop: false,
                      child: CupertinoAlertDialog(
                        title: Text(
                          AppLocalizations.of(context)!.alert,
                          style: kfontstyle(),
                        ),
                        content: Text(
                          isApprove == true
                              ? '${AppLocalizations.of(context)!.credit_memo} ${selectedLocale?.languageCode == 'en' ? resp.status : resp.arstatus}'
                              : '${AppLocalizations.of(context)!.credit_memo} ${selectedLocale?.languageCode == 'en' ? resp.status : resp.arstatus}',
                          style: kfontstyle(),
                        ),
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
                      else{
                        return AlertDialog(
                          title: Text(
                          AppLocalizations.of(context)!.alert,
                          style: kfontstyle(),
                        ),
                        content: Text(
                          isApprove == true
                              ? '${AppLocalizations.of(context)!.credit_memo} ${selectedLocale?.languageCode == 'en' ? resp.status : resp.arstatus}'
                              : '${AppLocalizations.of(context)!.credit_memo} ${selectedLocale?.languageCode == 'en' ? resp.status : resp.arstatus}',
                          style: kfontstyle(),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                        );
                      }
                    }
                  );
                }
              },
              creditNoteApprovalFailedState: () {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (context) {
                    if(Platform.isIOS)
                    {
                      return CupertinoAlertDialog(
                    title: Text(
                      AppLocalizations.of(context)!.alert,
                      style: kfontstyle(),
                    ),
                    content: Text(
                      AppLocalizations.of(context)!.somethingWentWrong,
                      style: kfontstyle(),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(AppLocalizations.of(context)!.ok),
                      ),
                    ],
                  );
                    }
                    else
                    {
                      return AlertDialog(
                        title: Text(
                      AppLocalizations.of(context)!.alert,
                      style: kfontstyle(),
                    ),
                    content: Text(
                      AppLocalizations.of(context)!.somethingWentWrong,
                      style: kfontstyle(),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(AppLocalizations.of(context)!.ok),
                      ),
                    ],
                      );
                    }
                  }
                );
              },
              creditNoteApprovalLoadingState: () {
                FocusScope.of(context).unfocus();
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
            return Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
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
                                    widget.creditNote.cnhNumber ?? '',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff2C6B9E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  /* Row(
                                    children: [
                                      Text(
                                        '${widget.creditNote.cusCode} - ',
                                        style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff2C6B9E),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          selectedLocale?.languageCode == 'en'
                                              ? widget.creditNote.cusName ?? ''
                                              : widget.creditNote.arcusName ??
                                                  '',
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                      ),
                                    ],
                                  ), */
                                  RichText(
                                    text: TextSpan(
                                        style: DefaultTextStyle.of(context)
                                            .style
                                            .copyWith(
                                              fontWeight: FontWeight.normal,
                                              decoration: TextDecoration.none,
                                            ),
                                        children: [
                                          TextSpan(
                                              text:
                                                  '${widget.creditNote.cusCode} - ',
                                              style: blueTextStyle()),
                                          TextSpan(
                                              text: selectedLocale
                                                          ?.languageCode ==
                                                      'en'
                                                  ? "${widget.creditNote.cusName}"
                                                  : widget.creditNote
                                                          .arcusName ??
                                                      '',
                                              style: subTitleTextStyle())
                                        ]),
                                  ),
                                  Text(
                                    widget.creditNote.createdDate ?? '',
                                    style: kfontstyle(
                                        fontSize: 10.sp, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: widget.creditNote.status!.isEmpty ||
                                        widget.creditNote.status !=
                                            'Action Taken'
                                    ? widget.creditNote.status == 'Rejected'
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
                                  selectedLocale?.languageCode == 'en'
                                      ? widget.creditNote.status ?? ''
                                      : widget.creditNote.arStatus ?? "",
                                  style: kfontstyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          widget.creditNote.status == 'Rejected'
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
                Divider(
                  color: Colors.grey[200],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: 30.h,
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      controller: _creditDetailtrls,
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
                                    if (_creditDetailtrls.text.isNotEmpty) {
                                      _creditDetailtrls.clear();

                                      context.read<CreditNoteDetailBloc>().add(
                                          GetCreditNoteDetailsEvent(
                                              reqId:
                                                  widget.creditNote.cnhId ?? '',
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
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
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
                          context.read<CreditNoteDetailBloc>().add(
                              GetCreditNoteDetailsEvent(
                                  reqId: widget.creditNote.cnhId ?? '',
                                  searchQuery: value.trim()));
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
                  child:
                      BlocBuilder<CreditNoteDetailBloc, CreditNoteDetailState>(
                    builder: (context, state) {
                      return state.when(
                        getCreditNoteDetailState: (details) => details == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        ShimmerContainers(
                                            height: 60.h,
                                            width: double.infinity),
                                    separatorBuilder: (context, index) =>
                                        Divider(
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
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      details[index]
                                                              .invInvoiceId ??
                                                          '',
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff7b70ac),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              'en'
                                                          ? details[index]
                                                                  .prdName ??
                                                              ''
                                                          : details[index]
                                                                  .arprdName ??
                                                              '',
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                  ],
                                                ),
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
                                                            : details[index]
                                                                    .huom ??
                                                                '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
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
                                                            : details[index]
                                                                    .luom ??
                                                                '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
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
                                                        details[index].crdHQty ==
                                                                    '0' ||
                                                                details[index]
                                                                        .crdHQty ==
                                                                    null
                                                            ? "0"
                                                            : details[index]
                                                                    .crdHQty ??
                                                                '0',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        details[index].crdLQty ==
                                                                    '0' ||
                                                                details[index]
                                                                        .crdLQty ==
                                                                    null
                                                            ? "0"
                                                            : details[index]
                                                                    .crdLQty ??
                                                                '0',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                    itemCount: details.length),
                        creditNoteDetailFailedState: () => Center(
                          child: Text(
                            'No Data Available',
                            style: kfontstyle(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                BlocListener<CreditNoteApprovalLevelStatusCubit,
                    CreditNoteApprovalLevelStatusState>(
                  listener: (context, state) {
                    state.when(
                      creditNoteApprovalStatusLevelState:
                          (statuslevel, isApproval) {
                        if (statuslevel != null) {
                          // if (statuslevel.currentLevel == '1') {
                          FocusScope.of(context).unfocus();

                          Navigator.pop(context);
                          showDialog(
                            context: context,
                            builder: (context) {
                              if(Platform.isIOS)
                              {
                                return CupertinoAlertDialog(
                              title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(statuslevel.status ?? ''),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                      AppLocalizations.of(context)!.cancel),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    context
                                        .read<CreditNoteApprovalAndRejectBloc>()
                                        .add(
                                            const CreditNoteApprovalLoadingEvent());
                                    context
                                        .read<CreditNoteApprovalAndRejectBloc>()
                                        .add(
                                          CreditNoteTakeActionEvent(
                                            approve:
                                                DisputeInvoiceApproveInModel(
                                                    nextLevel: isApproval ==
                                                            true
                                                        ? statuslevel.nextLevel
                                                        : '',
                                                    remark: _remarksctrls.text,
                                                    reqId:
                                                        widget.creditNote.cnhId,
                                                    userId: widget.user.usrId ??
                                                        ''),
                                          ),
                                        );
                                  },
                                  child: Text(
                                      AppLocalizations.of(context)!.proceed),
                                ),
                              ],
                            );
                            }
                            else
                            {
                              return AlertDialog(
                                title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(statuslevel.status ?? ''),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                      AppLocalizations.of(context)!.cancel),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    context
                                        .read<CreditNoteApprovalAndRejectBloc>()
                                        .add(
                                            const CreditNoteApprovalLoadingEvent());
                                    context
                                        .read<CreditNoteApprovalAndRejectBloc>()
                                        .add(
                                          CreditNoteTakeActionEvent(
                                            approve:
                                                DisputeInvoiceApproveInModel(
                                                    nextLevel: isApproval ==
                                                            true
                                                        ? statuslevel.nextLevel
                                                        : '',
                                                    remark: _remarksctrls.text,
                                                    reqId:
                                                        widget.creditNote.cnhId,
                                                    userId: widget.user.usrId ??
                                                        ''),
                                          ),
                                        );
                                  },
                                  child: Text(
                                      AppLocalizations.of(context)!.proceed),
                                ),
                              ],
                              );
                            }
                            }
                          );
                          /*  } else {
                            showCupertinoDialog(
                              context: context,
                              builder: (context) => CupertinoAlertDialog(
                                title: const Text('Alert'),
                                content: Text(statuslevel.status ?? ''),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Ok'),
                                  ),
                                ],
                              ),
                            );
                          } */
                        }
                      },
                      creditNoteApprovalLevelFailedState: () {
                        Navigator.pop(context);
                        showDialog(
                          context: context,
                          builder: (context) {
                            if(Platform.isIOS)
                            {
                              return  CupertinoAlertDialog(
                            title: Text(
                              AppLocalizations.of(context)!.alert,
                              style: kfontstyle(),
                            ),
                            content: Text(
                              AppLocalizations.of(context)!.somethingWentWrong,
                              style: kfontstyle(),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(AppLocalizations.of(context)!.ok),
                              ),
                            ],
                          );
                            }
                            else
                            {
                              return AlertDialog(
                                 title: Text(
                              AppLocalizations.of(context)!.alert,
                              style: kfontstyle(),
                            ),
                            content: Text(
                              AppLocalizations.of(context)!.somethingWentWrong,
                              style: kfontstyle(),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(AppLocalizations.of(context)!.ok),
                              ),
                            ],
                              );
                            }
                          }
                        );
                      },
                      creditNoteApprovalLevelLoadingState: () {
                        FocusScope.of(context).unfocus();

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
                  child:
                      BlocBuilder<CreditNoteDetailBloc, CreditNoteDetailState>(
                    builder: (context, state) {
                      return state.when(
                        getCreditNoteDetailState: (details) => details == null
                            ? const SizedBox.shrink()
                            : SizedBox(
                                //height: 80.h,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 5),
                                      child: TextFormField(
                                        controller: widget.creditNote.status ==
                                                'Pending'
                                            ? _remarksctrls
                                            : TextEditingController(
                                                text:
                                                    widget.creditNote.remarks),
                                        enabled: widget.creditNote.status ==
                                                'Pending'
                                            ? true
                                            : false,
                                        style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: Colors.black),
                                        maxLength: 200,
                                        maxLines: null,
                                        decoration: InputDecoration(
                                          hintText:
                                              AppLocalizations.of(context)!
                                                  .remarks,
                                          hintStyle: kfontstyle(
                                            fontSize: 12.sp,
                                            color: widget.creditNote.status ==
                                                    'Pending'
                                                ? Colors.red.shade300
                                                : Colors.grey,
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[300]!),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[300]!),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[300]!),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible:
                                          widget.creditNote.status == 'Pending'
                                              ? true
                                              : false,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Row(
                                              children: [
                                                Flexible(
                                                  flex: 1,
                                                  fit: FlexFit.tight,
                                                  child: MaterialButton(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    color: widget.creditNote
                                                                .status ==
                                                            'Pending'
                                                        ? Colors.red.shade300
                                                        : Colors.grey[300],
                                                    onPressed: () {
                                                      if (widget.creditNote
                                                              .status ==
                                                          'Pending') {
                                                        context
                                                            .read<
                                                                CreditNoteApprovalLevelStatusCubit>()
                                                            .addCreditNoteStatusLoaingEvent();
                                                        context
                                                            .read<
                                                                CreditNoteApprovalLevelStatusCubit>()
                                                            .checkApprovalstatusLevel(
                                                                widget.user
                                                                        .usrId ??
                                                                    '',
                                                                false);
                                                      }
                                                    },
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .reject,
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                    ),
                                                    color: widget.creditNote
                                                                .status ==
                                                            'Pending'
                                                        ? Colors.green.shade300
                                                        : Colors.grey[300],
                                                    onPressed: () {
                                                      if (widget.creditNote
                                                              .status ==
                                                          'Pending') {
                                                        context
                                                            .read<
                                                                CreditNoteApprovalLevelStatusCubit>()
                                                            .addCreditNoteStatusLoaingEvent();
                                                        context
                                                            .read<
                                                                CreditNoteApprovalLevelStatusCubit>()
                                                            .checkApprovalstatusLevel(
                                                                widget.user
                                                                        .usrId ??
                                                                    '',
                                                                true);
                                                      }
                                                    },
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .approve,
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                        creditNoteDetailFailedState: () =>
                            const SizedBox.shrink(),
                      );
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
