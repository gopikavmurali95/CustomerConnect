import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/asset_add_approval_in_model/asset_add_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AssetAddingApprovalHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const AssetAddingApprovalHeaderScreen({super.key, required this.user});

  @override
  State<AssetAddingApprovalHeaderScreen> createState() =>
      _AssetAddingApprovalHeaderScreenState();
}

List<bool?> statuslist = [];
int loadingCount = 0;
List<TextEditingController> _slNoCtrls = [];

TextEditingController _assetAddCtrl = TextEditingController();
Timer? debounce;

class _AssetAddingApprovalHeaderScreenState
    extends State<AssetAddingApprovalHeaderScreen> {
  @override
  void initState() {
    _assetAddCtrl.clear();
    loadingCount = 0;
    context
        .read<AssetAddInApprovalHeaderBloc>()
        .add(const ClearAllRequestHeadersState());

    context.read<AssetAddInApprovalHeaderBloc>().add(
        GetallAssetAddingRequestHeadersEvent(
            userId: widget.user.usrId ?? '', searchQuery: ''));

    super.initState();
  }

  @override
  void dispose() {
    _slNoCtrls.clear();
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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          AppLocalizations.of(context)!.add_assets,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: _assetAddCtrl,
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
                                if (_assetAddCtrl.text.isNotEmpty) {
                                  _assetAddCtrl.clear();

                                  context
                                      .read<AssetAddInApprovalHeaderBloc>()
                                      .add(GetallAssetAddingRequestHeadersEvent(
                                          searchQuery: '',
                                          userId: widget.user.usrId ?? ''));
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
                      context.read<AssetAddInApprovalHeaderBloc>().add(
                          GetallAssetAddingRequestHeadersEvent(
                              searchQuery: value.trim(),
                              userId: widget.user.usrId ?? ''));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: BlocListener<AssetAddInApprovalHeaderBloc,
                    AssetAddInApprovalHeaderState>(
              listener: (context, state) {
                state.when(
                  getAllAssetAddingHeadersState: (headers) {
                    if (headers != null) {
                      statuslist =
                          List.generate(headers.length, (index) => null);
                      _slNoCtrls = List.generate(
                          headers.length, (index) => TextEditingController());
                    }
                  },
                  assetAddingHeaderFailedState: () {},
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: BlocBuilder<AssetAddInApprovalHeaderBloc,
                    AssetAddInApprovalHeaderState>(
                  builder: (context, state) {
                    return state.when(
                      getAllAssetAddingHeadersState: (headers) =>
                          headers == null
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 0),
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
                              : ListView.separated(
                                  itemBuilder:
                                      (context, index) => GestureDetector(
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
                                                Container(
                                                  height: 80,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xfffee8e0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
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
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              selectedLocale
                                                                          ?.languageCode ==
                                                                      "en"
                                                                  ? headers[index]
                                                                          .rsnName ??
                                                                      ''
                                                                  : headers[index]
                                                                          .rsnArName ??
                                                                      '',
                                                              style: kfontstyle(
                                                                fontSize: 12.sp,
                                                                color: const Color(
                                                                    0xff2C6B9E),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            /* Row(
                                                              children: [
                                                                Text(
                                                                  '${headers[index].astCode} - ',
                                                                  style: kfontstyle(
                                                                      fontSize: 12.sp,
                                                                      color: const Color(
                                                                        0xff2C6B9E,
                                                                      ),
                                                                      fontWeight: FontWeight.w500),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    selectedLocale?.languageCode ==
                                                                            "en"
                                                                        ? /* headers[index].astName ?? */
                                                                            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                                                                        : headers[index].astArName ??
                                                                            '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ), */
                                                            RichText(
                                                              text: TextSpan(
                                                                style: DefaultTextStyle.of(
                                                                        context)
                                                                    .style,
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        '${headers[index].astCode} - ',
                                                                    style: kfontstyle(
                                                                        fontSize: 12.sp,
                                                                        color: const Color(
                                                                          0xff2C6B9E,
                                                                        ),
                                                                        fontWeight: FontWeight.w500),
                                                                  ),
                                                                  TextSpan(
                                                                    text: selectedLocale?.languageCode ==
                                                                            'en'
                                                                        ? "${headers[index].astName}"
                                                                        : headers[index].astArName ??
                                                                            '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                    // overflow: TextOverflow.ellipsis,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            /* Row(
                                                              children: [
                                                                Text(
                                                                  '${headers[index].cusCode} - ',
                                                                  style:
                                                                      kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color: const Color(
                                                                        0xff2C6B9E),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    selectedLocale?.languageCode ==
                                                                            "en"
                                                                        ? /* headers[index].cusName ?? */
                                                                            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
                                                                        : headers[index].cusArName ??
                                                                            "",
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ), */
                                                            RichText(
                                                              text: TextSpan(
                                                                style: DefaultTextStyle.of(
                                                                        context)
                                                                    .style,
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        '${headers[index].cusCode} - ',
                                                                    style:
                                                                        kfontstyle(
                                                                      fontSize:
                                                                          12.sp,
                                                                      color: const Color(
                                                                          0xff2C6B9E),
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: selectedLocale?.languageCode ==
                                                                            'en'
                                                                        ? "${headers[index].cusName}"
                                                                        : headers[index].cusArName ??
                                                                            '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                    // overflow: TextOverflow.ellipsis,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Text(
                                                              '${headers[index].rotCode} |${headers[index].createdDate}',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      10.sp,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                            BlocConsumer<
                                                                AssetAddingApprovalAndRjectBlocBloc,
                                                                AssetAddingApprovalAndRjectBlocState>(
                                                              listener:
                                                                  (context,
                                                                      state) {
                                                                state.when(
                                                                  assetAddingApprvalState:
                                                                      (response,
                                                                          isApproval) {
                                                                    if (response !=
                                                                        null) {
                                                                      Navigator.pop(
                                                                          context);
                                                                      // if (isApproval) {
                                                                      showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                              if(Platform.isIOS) //alert for ios
                                                                              {
                                                                                return CupertinoAlertDialog(
                                                                          title:
                                                                              Text(AppLocalizations.of(context)!.alert),
                                                                          content:
                                                                              Text("${AppLocalizations.of(context)!.add_assets} ${selectedLocale?.languageCode == "en" ? response.status ?? '' : response.arStatus ?? ''}"),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () {
                                                                                context.read<AssetAddInApprovalHeaderBloc>().add(GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? '64', searchQuery: ''));
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text(AppLocalizations.of(context)!.proceed),
                                                                            ),
                                                                          ],
                                                                        );
                                                                              }
                                                                              else //alert for android
                                                                              {
                                                                                return AlertDialog(
                                                                                   title:
                                                                              Text(AppLocalizations.of(context)!.alert),
                                                                          content:
                                                                              Text("${AppLocalizations.of(context)!.add_assets} ${selectedLocale?.languageCode == "en" ? response.status ?? '' : response.arStatus ?? ''}"),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () {
                                                                                context.read<AssetAddInApprovalHeaderBloc>().add(GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? '64', searchQuery: ''));
                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: Text(AppLocalizations.of(context)!.proceed),
                                                                            ),
                                                                          ],
                                                                                );
                                                                              }
                                                                            }
                                                                                
                                                                      );
                                                                    
                                                                    }
                                                                  },
                                                                  assetAddingApprovalFailedState:
                                                                      () {
                                                                    Navigator.pop(
                                                                        context);
                                                                    showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                            if(Platform.isIOS)
                                                                            {
                                                                              return CupertinoAlertDialog(
                                                                        title: Text(
                                                                            AppLocalizations.of(context)!.alert),
                                                                        content:
                                                                            Text(AppLocalizations.of(context)!.somethingWentWrong),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              context.read<AssetAddInApprovalHeaderBloc>().add(
                                                                                    GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? ' ', searchQuery: ''),
                                                                                  );
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Text(AppLocalizations.of(context)!.ok),
                                                                          ),
                                                                        ],
                                                                      );
                                                                            }
                                                                            else

                                                                            {
                                                                             return  AlertDialog(
                                                                                title: Text(
                                                                            AppLocalizations.of(context)!.alert),
                                                                        content:
                                                                            Text(AppLocalizations.of(context)!.somethingWentWrong),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              context.read<AssetAddInApprovalHeaderBloc>().add(
                                                                                    GetallAssetAddingRequestHeadersEvent(userId: widget.user.usrId ?? ' ', searchQuery: ''),
                                                                                  );
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                Text(AppLocalizations.of(context)!.ok),
                                                                          ),
                                                                        ],
                                                                              );
                                                                            }
                                                                          },
                                                                        
                                                                    );
                                                                  },
                                                                  assetAddingApprovalLoadingState:
                                                                      () {
                                                                    if (loadingCount ==
                                                                        0) {
                                                                      loadingCount =
                                                                          1;
                                                                      showCupertinoModalPopup(
                                                                          context:
                                                                              context,
                                                                          barrierDismissible:
                                                                              false,
                                                                          builder: (context) =>
                                                                              SizedBox(
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
                                                                    }
                                                                  },
                                                                );
                                                              },
                                                              builder: (context,
                                                                  state) {
                                                                return Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _slNoCtrls[index],
                                                                        cursorColor:
                                                                            Colors.black,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              AppLocalizations.of(context)!.slNo,
                                                                          hintStyle:
                                                                              kfontstyle(
                                                                            fontSize:
                                                                                12.sp,
                                                                            color:
                                                                                Colors.grey,
                                                                          ),
                                                                          border:
                                                                              InputBorder.none,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Transform
                                                                        .scale(
                                                                      scale:
                                                                          0.8,
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            if (_slNoCtrls[index].text.isEmpty) {
                                                                              showDialog(
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  if(Platform.isIOS)
                                                                                  {
                                                                                    return CupertinoAlertDialog(
                                                                                  title: Text(AppLocalizations.of(context)!.alert),
                                                                                  content: Text(AppLocalizations.of(context)!.pleaseEnterSlNo),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        // setState(() {});
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
                                                                                       title: Text(AppLocalizations.of(context)!.alert),
                                                                                  content: Text(AppLocalizations.of(context)!.pleaseEnterSlNo),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        // setState(() {});
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.ok),
                                                                                    ),
                                                                                  ],
                                                                                    );
                                                                                  }
                                                                                }
                                                                              );
                                                                            } else {
                                                                              showDialog(
                                                                                context: context,
                                                                                builder: (context) {
                                                                                  if(Platform.isIOS)
                                                                                  {
                                                                                    return  CupertinoAlertDialog(
                                                                                  title: Text(AppLocalizations.of(context)!.alert),
                                                                                  content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        setState(() {});
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.cancel),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        statuslist[index] = true;
                                                                                        loadingCount = 0;
                                                                                        setState(() {});
                                                                                        context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                                        context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                              AssetAddingApproveEvent(
                                                                                                approve: AssetAddApprovalInModel(reqId: headers[index].aahId, serialNum: _slNoCtrls[index].text, userId: widget.user.usrId),
                                                                                              ),
                                                                                            );

                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.proceed),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                                  }
                                                                                  else
                                                                                  {
                                                                                    return AlertDialog(
                                                                                      title: Text(AppLocalizations.of(context)!.alert),
                                                                                  content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        setState(() {});
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.cancel),
                                                                                    ),
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        statuslist[index] = true;
                                                                                        loadingCount = 0;
                                                                                        setState(() {});
                                                                                        context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                                        context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                              AssetAddingApproveEvent(
                                                                                                approve: AssetAddApprovalInModel(reqId: headers[index].aahId, serialNum: _slNoCtrls[index].text, userId: widget.user.usrId),
                                                                                              ),
                                                                                            );

                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.proceed),
                                                                                    ),
                                                                                  ],

                                                                                    );
                                                                                  }
                                                                                }
                                                                              );
                                                                            }
                                                                          });
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Radio(
                                                                              fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                return (statuslist[index] == true) ? Colors.green.shade300 : Colors.grey;
                                                                              }),
                                                                              /* activeColor: isselected == true
                                                                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                                                                            : Colors.grey, */
                                                                              value: statuslist[index] == null
                                                                                  ? false
                                                                                  : statuslist[index] == true
                                                                                      ? true
                                                                                      : false,
                                                                              groupValue: true,
                                                                              onChanged: (value) {
                                                                                if (_slNoCtrls[index].text.isEmpty) {
                                                                                  showDialog(
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      if(Platform.isIOS)
                                                                                      {
                                                                                        return CupertinoAlertDialog(
                                                                                      title: Text(AppLocalizations.of(context)!.alert),
                                                                                      content: Text(AppLocalizations.of(context)!.pleaseEnterSlNo),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            // setState(() {});
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.ok),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                      }
                                                                                      else{
                                                                                       return  AlertDialog(
                                                                                           title: Text(AppLocalizations.of(context)!.alert),
                                                                                      content: Text(AppLocalizations.of(context)!.pleaseEnterSlNo),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            // setState(() {});
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.ok),
                                                                                        ),
                                                                                      ],
                                                                                        );
                                                                                      }
                                                                                    }
                                                                                  );
                                                                                } else {
                                                                                  showDialog(
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      if(Platform.isIOS)
                                                                                      {
                                                                                        return CupertinoAlertDialog(
                                                                                      title: Text(AppLocalizations.of(context)!.alert),
                                                                                      content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            setState(() {});
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.cancel),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            statuslist[index] = true;
                                                                                            loadingCount = 0;
                                                                                            setState(() {});
                                                                                            context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                                            context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                                  AssetAddingApproveEvent(
                                                                                                    approve: AssetAddApprovalInModel(reqId: headers[index].aahId, serialNum: _slNoCtrls[index].text, userId: widget.user.usrId),
                                                                                                  ),
                                                                                                );

                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.proceed),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                      }
                                                                                      else {
                                                                                        return AlertDialog(
                                                                                          title: Text(AppLocalizations.of(context)!.alert),
                                                                                      content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            setState(() {});
                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.cancel),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () {
                                                                                            statuslist[index] = true;
                                                                                            loadingCount = 0;
                                                                                            setState(() {});
                                                                                            context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                                            context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                                  AssetAddingApproveEvent(
                                                                                                    approve: AssetAddApprovalInModel(reqId: headers[index].aahId, serialNum: _slNoCtrls[index].text, userId: widget.user.usrId),
                                                                                                  ),
                                                                                                );

                                                                                            Navigator.pop(context);
                                                                                          },
                                                                                          child: Text(AppLocalizations.of(context)!.proceed),
                                                                                        ),
                                                                                      ],
                                                                                        );
                                                                                      }
                                                                                    }
                                                                                  );
                                                                                }
                                                                              },
                                                                            ),
                                                                            Text(
                                                                              AppLocalizations.of(context)!.approve,
                                                                              style: kfontstyle(),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Transform
                                                                        .scale(
                                                                      scale:
                                                                          0.8,
                                                                      child:
                                                                          InkWell(
                                                                        onTap:
                                                                            () {
                                                                          setState(
                                                                              () {
                                                                            showDialog(
                                                                              context: context,
                                                                              builder: (context) {
                                                                                if(Platform.isIOS)
                                                                                {
                                                                                  return CupertinoAlertDialog(
                                                                                title: Text(AppLocalizations.of(context)!.alert),
                                                                                content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () {
                                                                                      setState(() {});
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                    child: Text(AppLocalizations.of(context)!.cancel),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () {
                                                                                      statuslist[index] = false;
                                                                                      loadingCount = 0;
                                                                                      setState(() {});
                                                                                      context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                                      context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                            AssetAddingApproveEvent(
                                                                                              approve: AssetAddApprovalInModel(
                                                                                                reqId: headers[index].aahId,
                                                                                                serialNum: null,
                                                                                                userId: widget.user.usrId,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                    child: Text(AppLocalizations.of(context)!.proceed),
                                                                                  ),
                                                                                ],
                                                                              );
                                                                                }
                                                                                else
                                                                                {
                                                                                  return AlertDialog(
                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () {
                                                                                      setState(() {});
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                    child: Text(AppLocalizations.of(context)!.cancel),
                                                                                  ),
                                                                                  TextButton(
                                                                                    onPressed: () {
                                                                                      statuslist[index] = false;
                                                                                      loadingCount = 0;
                                                                                      setState(() {});
                                                                                      context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const AddAssetAddingApproveLoadingEvent());
                                                                                      context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                            AssetAddingApproveEvent(
                                                                                              approve: AssetAddApprovalInModel(
                                                                                                reqId: headers[index].aahId,
                                                                                                serialNum: null,
                                                                                                userId: widget.user.usrId,
                                                                                              ),
                                                                                            ),
                                                                                          );
                                                                                      Navigator.pop(context);
                                                                                    },
                                                                                    child: Text(AppLocalizations.of(context)!.proceed),
                                                                                  ),
                                                                                ],
                                                                                  );
                                                                                }
                                                                              }
                                                                            );
                                                                          });
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Radio(
                                                                              fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                return (statuslist[index] != null && !statuslist[index]!) ? Colors.red.shade300 : Colors.grey;
                                                                              }),
                                                                              /*  activeColor: isselected == false
                                                                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                                                                            : Colors.grey, */
                                                                              value: statuslist[index] == null
                                                                                  ? true
                                                                                  : statuslist[index] == true
                                                                                      ? true
                                                                                      : false,
                                                                              groupValue: false,
                                                                              onChanged: (value) {
                                                                                showDialog
                                                                                (
                                                                                  context: context,
                                                                                  builder: (context) {
                                                                                    if(Platform.isIOS)
                                                                                    {
                                                                                      return CupertinoAlertDialog(
                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                    content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          setState(() {});
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.cancel),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          statuslist[index] = false;
                                                                                          loadingCount = 0;
                                                                                          setState(() {});
                                                                                          context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const 
                                                                                          AddAssetAddingApproveLoadingEvent());
                                                                                          context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                                AssetAddingApproveEvent(
                                                                                                  approve: AssetAddApprovalInModel(
                                                                                                    reqId: headers[index].aahId,
                                                                                                    serialNum: null,
                                                                                                    userId: widget.user.usrId,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                    }
                                                                                    else{
                                                                                      return AlertDialog(
                                                                                         title: Text(AppLocalizations.of(context)!.alert),
                                                                                    content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          setState(() {});
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.cancel),
                                                                                      ),
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          statuslist[index] = false;
                                                                                          loadingCount = 0;
                                                                                          setState(() {});
                                                                                          context.read<AssetAddingApprovalAndRjectBlocBloc>().add(const 
                                                                                          AddAssetAddingApproveLoadingEvent());
                                                                                          context.read<AssetAddingApprovalAndRjectBlocBloc>().add(
                                                                                                AssetAddingApproveEvent(
                                                                                                  approve: AssetAddApprovalInModel(
                                                                                                    reqId: headers[index].aahId,
                                                                                                    serialNum: null,
                                                                                                    userId: widget.user.usrId,
                                                                                                  ),
                                                                                                ),
                                                                                              );
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                      ),
                                                                                    ],
                                                                                      );
                                                                                    }
                                                                                  }
                                                                                );

                                                                                /* context
                                                                                                                                                                                              .read<
                                                                                                                                                                                                  AapprovalOrRejectRadioCubit>()
                                                                                                                                                                                              .changeApprovalStatus(
                                                                                                                                                                                                  statuslist[index]); */
                                                                              },
                                                                            ),
                                                                            Text(
                                                                              AppLocalizations.of(context)!.reject,
                                                                              style: kfontstyle(),
                                                                            )
                                                                          ],
                                                                        ),
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
                          AppLocalizations.of(context)!.noDataAvailable,
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
      ),
    );
  }
}
