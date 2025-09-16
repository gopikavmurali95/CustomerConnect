import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart';
import 'package:customer_connect/feature/widgets/pdfviewer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerDocumentScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  const CustomerDocumentScreen({
    super.key,
    required this.user,
    required this.customer,
  });

  @override
  State<CustomerDocumentScreen> createState() => _CustomerDocumentScreenState();
}

class _CustomerDocumentScreenState extends State<CustomerDocumentScreen> {
  @override
  void initState() {
    context.read<CusDocumentsBloc>().add(const ClearCusDocsEvent());
    context
        .read<CusDocumentsBloc>()
        .add(GetCusDOcsEvevnt(cusID: widget.customer.cusId ?? ''));
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
            AppLocalizations.of(context)!.documents,
            style: appHeading(),
          ),
        ),
        body: BlocBuilder<CusDocumentsBloc, CusDocumentsState>(
          builder: (context, state) {
            return state.when(
              getCusDocsState: (docs) => docs == null
                  ? const Center(
                      child: CupertinoActivityIndicator(
                        animating: true,
                        color: Colors.red,
                        radius: 30,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              children: [
                                Row(
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
                                          Row(
                                            children: [
                                              Text(
                                                '${widget.customer.cusCode} - ',
                                                style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  selectedLocale
                                                              ?.languageCode ==
                                                          'en'
                                                      ? widget.customer
                                                              .cusName ??
                                                          ''
                                                      : widget.customer
                                                              .arcusName ??
                                                          "",
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
                                                '${widget.customer.headerCode} - ',
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  selectedLocale
                                                              ?.languageCode ==
                                                          'en'
                                                      ? widget.customer
                                                              .headerName ??
                                                          ''
                                                      : widget.customer
                                                              .arheaderName ??
                                                          '',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: kfontstyle(
                                                      fontSize: 12.sp),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName} ',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Divider(
                                  color: Colors.grey[300],
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Text(
                                  AppLocalizations.of(context)!.attachments,
                                  style: countHeading(),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '1) ${selectedLocale?.languageCode == 'en' ? docs[0].docName : docs[0].arDocName}',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          Platform.isIOS
                                              ? CupertinoPageRoute(
                                                  builder: (context) =>
                                                      PdfViewScreen(
                                                          pdfUrl:
                                                              docs[0].docUrl ??
                                                                  ''))
                                              : MaterialPageRoute(
                                                  builder: (context) =>
                                                      PdfViewScreen(
                                                    pdfUrl:
                                                        docs[0].docUrl ?? '',
                                                  ),
                                                ));
                                    },
                                    child: Card(
                                      surfaceTintColor: Colors.white,
                                      elevation: 2,
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        child: SizedBox(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const CircleAvatar(
                                                radius: 10,
                                                backgroundColor:
                                                    Color(0xff79b5ca),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Text(
                                                AppLocalizations.of(context)!
                                                    .viewFile,
                                                style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Visibility(
                            visible: docs.length > 1 ? true : false,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2) ${docs.length > 1 ? selectedLocale?.languageCode == 'en' ? docs[1].docName : docs[1].arDocName : ''}',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            Platform.isIOS
                                                ? CupertinoPageRoute(
                                                    builder: (context) =>
                                                        PdfViewScreen(
                                                            pdfUrl: docs[1]
                                                                    .docUrl ??
                                                                ''))
                                                : MaterialPageRoute(
                                                    builder: (context) =>
                                                        PdfViewScreen(
                                                      pdfUrl:
                                                          docs[1].docUrl ?? '',
                                                    ),
                                                  ));
                                      },
                                      child: Card(
                                        surfaceTintColor: Colors.white,
                                        elevation: 2,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10),
                                          child: SizedBox(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor:
                                                      Color(0xff79b5ca),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .viewFile,
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .startDate,
                                              style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Card(
                                              surfaceTintColor: Colors.white,
                                              elevation: 2,
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 15),
                                                child: SizedBox(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SvgPicture.asset(
                                                          'assets/svg/calendar.svg'),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Text(
                                                        docs[1].fromDate ?? '',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .expiryDate,
                                              style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Card(
                                              surfaceTintColor: Colors.white,
                                              elevation: 2,
                                              color: Colors.white,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20,
                                                        vertical: 15),
                                                child: SizedBox(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      SvgPicture.asset(
                                                          'assets/svg/calendar.svg'),
                                                      SizedBox(
                                                        width: 10.w,
                                                      ),
                                                      Text(
                                                        docs[1].endDate ?? '',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: Colors.black54,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Visibility(
                            visible: docs.length > 2 ? true : false,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '3) ${AppLocalizations.of(context)!.other}',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                Platform.isIOS
                                                    ? CupertinoPageRoute(
                                                        builder: (context) =>
                                                            PdfViewScreen(
                                                                pdfUrl: docs[2]
                                                                        .docUrl ??
                                                                    ''))
                                                    : MaterialPageRoute(
                                                        builder: (context) =>
                                                            PdfViewScreen(
                                                          pdfUrl:
                                                              docs[2].docUrl ??
                                                                  '',
                                                        ),
                                                      ));
                                          },
                                          child: Card(
                                            surfaceTintColor: Colors.white,
                                            elevation: 2,
                                            color: Colors.white,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                              child: SizedBox(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    const CircleAvatar(
                                                      radius: 10,
                                                      backgroundColor:
                                                          Color(0xff79b5ca),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .viewFile,
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: Colors.black54,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${AppLocalizations.of(context)!.attachedDocumentType}: ${docs.length > 2 ? selectedLocale?.languageCode == 'en' ? docs[2].docName : docs[2].arDocName : ''}',
                                          style: kfontstyle(
                                            fontSize: 11.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .userLicenseAgreement,
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
              getCusDOcsFailedState: () => Center(
                child: Text(
                  AppLocalizations.of(context)!.noDataAvailable,
                  style: kfontstyle(),
                ),
              ),
            );
          },
        ));
  }
}
