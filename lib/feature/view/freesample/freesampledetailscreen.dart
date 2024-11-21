import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/free_sample_header_model/free_sample_header_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/freesampleapprove/free_sample_approve_bloc.dart';
import 'package:customer_connect/feature/state/bloc/freesampledetail/free_sample_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/freesampleheader/free_sample_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart';
import 'package:customer_connect/feature/view/freesample/freesampleheaderscreen.dart';
import 'package:customer_connect/feature/view/freesample/widgets/freesampledetaillistwidget.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FreeSampleDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final String currentMode;
  final FreeSampleHeaderModel header;
  const FreeSampleDetailScreen(
      {super.key,
      required this.user,
      required this.currentMode,
      required this.header});

  @override
  State<FreeSampleDetailScreen> createState() => _FreeSampleDetailScreenState();
}

TextEditingController freesampleDetailsearchCtrl = TextEditingController();
Timer? debounce;

class _FreeSampleDetailScreenState extends State<FreeSampleDetailScreen> {
  @override
  void initState() {
    freesampleDetailsearchCtrl.clear();
    context
        .read<FreeSampleDetailBloc>()
        .add(const ClearFreeSampleDetailEvent());
    context.read<FreeSampleDetailBloc>().add(GetFreeSampleDetailsEvent(
        headerID: widget.header.fshId ?? '', searchQuery: ''));
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
            context.read<PartialDeliveryHeaderBloc>().add(
                GetPartialDeliveryHeaderEvent(
                    userID: widget.user.usrId!,
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
          "Free Sample Detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context.read<FreeSampleHeaderBloc>().add(GetFreeSampleHeadersEvent(
              mode: freesampleselectedeMode, searchQuery: ''));
          freesampleHeaderSearchctrl.clear();
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.header.fshReqId ?? '',
                            style: blueTextStyle()),
                        /* Row(
                            children: [
                              Text('${widget.header.cusCode} - ',
                                  style: blueTextStyle()),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    selectedLocale?.languageCode == 'en'
                                        ? "${widget.header.cusName}"
                                        : widget.header.arcusName ?? '',
                                    style: subTitleTextStyle()),
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
                                    text: '${widget.header.cusCode} - ',
                                    style: blueTextStyle()),
                                TextSpan(
                                    text: selectedLocale?.languageCode == 'en'
                                        ? "${widget.header.cusName}"
                                        : widget.header.cusName ?? '',
                                    style: subTitleTextStyle())
                              ]),
                        ),
                        Text(
                          '${widget.header.rotCode} | ${widget.header.createdDate}',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
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
                  controller: freesampleDetailsearchCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: AppLocalizations.of(context)!.searchhere,
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                context.read<FreeSampleDetailBloc>().add(
                                    GetFreeSampleDetailsEvent(
                                        headerID: widget.header.fshId ?? '',
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
                      context.read<FreeSampleDetailBloc>().add(
                          GetFreeSampleDetailsEvent(
                              headerID: widget.header.fshId ?? '',
                              searchQuery: value.trim()));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            BlocListener<FreeSampleApproveBloc, FreeSampleApproveState>(
              listener: (context, state) {
                state.when(
                  submitFreeSampleRequestState: (resp) {
                    if (resp != null) {
                      Navigator.pop(context);

                      showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            if (Platform.isIOS) {
                              return CupertinoAlertDialog(
                                title:
                                    Text(AppLocalizations.of(context)!.alert),
                                content: Text(
                                    " ${selectedLocale?.languageCode == 'en' ? 'Your request has been successfully actioned' : 'لقد تم تنفيذ طلبك بنجاح'} "),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child:
                                        Text(AppLocalizations.of(context)!.ok),
                                  ),
                                ],
                              );
                            } else {
                              return AlertDialog(
                                title:
                                    Text(AppLocalizations.of(context)!.alert),
                                content: Text(
                                    " ${selectedLocale?.languageCode == 'en' ? 'Your request has been successfully actioned' : 'لقد تم تنفيذ طلبك بنجاح'} "),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      Navigator.pop(context);
                                    },
                                    child:
                                        Text(AppLocalizations.of(context)!.ok),
                                  ),
                                ],
                              );
                            }
                          });
                    }
                  },
                  freesampleSubmitFailedState: () {
                    // statuslist = List.generate(_totalcount, (index) => null);
                    // setState(() {});
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (context) {
                          if (Platform.isIOS) {
                            return CupertinoAlertDialog(
                              title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(AppLocalizations.of(context)!
                                  .somethingWentWrong),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(AppLocalizations.of(context)!.ok),
                                ),
                              ],
                            );
                          } else {
                            return AlertDialog(
                              title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(AppLocalizations.of(context)!
                                  .somethingWentWrong),
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
                        });
                  },
                  freesampleSubmitLoadingState: () {
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
              child: FreeSampleDetailListWidget(
                header: widget.header,
                user: widget.user,
              ),
            )
          ],
        ),
      ),
    );
  }
}
