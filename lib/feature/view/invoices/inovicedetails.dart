import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart';
import 'package:customer_connect/feature/state/bloc/stampedcopybloc/stamped_copy_bloc.dart';
import 'package:customer_connect/feature/view/invoices/widgets/invoicedetaillist.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InvoiceDetailScreen extends StatefulWidget {
  final bool isfromUser;
  final InvoiceHeaderModel invoiceheader;
  final LoginUserModel user;
  const InvoiceDetailScreen(
      {super.key,
      required this.isfromUser,
      required this.invoiceheader,
      required this.user});

  @override
  State<InvoiceDetailScreen> createState() => _InvoiceDetailScreenState();
}

final _invoiceDetailsSearchCtrl = TextEditingController();
Timer? debounce;

class _InvoiceDetailScreenState extends State<InvoiceDetailScreen> {
  @override
  void initState() {
    _invoiceDetailsSearchCtrl.clear();
    // context.read<InvoiceDetailsTotalCubit>().getInvTotal([]);
    context.read<InvoiceDetailsBloc>().add(const ClearInvoiceDetails());
    context.read<InvoiceDetailsBloc>().add(
        GetInvoiceDetailsEvent(id: widget.invoiceheader.id!, searchQuery: ''));
    super.initState();
    context
        .read<InvoiceDetailsFooterBloc>()
        .add(const ClearInvoiceDetailsFooter());
    context
        .read<InvoiceDetailsFooterBloc>()
        .add(GetInvoiceDetailsFooterEvent(iD: widget.invoiceheader.id!));
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
          AppLocalizations.of(context)!.invoice_details,
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.invoiceheader.invoiceNo ?? '',
                              style: blueTextStyle()),
                          Row(
                            children: [
                              Text(
                                '${widget.invoiceheader.cusCode} ',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    selectedLocale?.languageCode == "en"
                                        ? widget.invoiceheader.cusName ?? ''
                                        : widget.invoiceheader.arcusName ?? '',
                                    style: subTitleTextStyle()),
                              ),
                            ],
                          ),
                          RichText(
                            text: TextSpan(
                              text: widget.invoiceheader.cusOutCode ?? '',
                              style: subTitleTextStyle(),
                              children: <TextSpan>[
                                TextSpan(text: '-', style: subTitleTextStyle()),
                                TextSpan(
                                  text: selectedLocale?.languageCode == "en"
                                      ? widget.invoiceheader.cusOutName ?? ''
                                      : widget.invoiceheader.arcusOutName ?? '',
                                ),
                              ],
                            ),
                          ),
                          // Row(
                          //   children: [
                          //     Text('${widget.invoiceheader.cusOutCode} - ',
                          //         style: subTitleTextStyle()),
                          //     Expanded(
                          //       child: Text(
                          //           selectedLocale?.languageCode == "en"
                          //               ? widget.invoiceheader.cusOutName ?? ''
                          //               : widget.invoiceheader.arcusOutName ??
                          //                   '',
                          //           overflow: TextOverflow.ellipsis,
                          //           style: subTitleTextStyle()),
                          //     ),
                          //   ],
                          // ),
                          Text(
                            '${widget.invoiceheader.payType} | ${widget.invoiceheader.rotName} | ${widget.invoiceheader.date} | ${widget.invoiceheader.time}',
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 14.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                color: widget.invoiceheader.invoiceType == 'DI'
                                    ? const Color(0xffe3f7e2)
                                    : const Color(0xfff7f4e2),
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                widget.invoiceheader.invoiceType ?? '',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ),
                          BlocListener<StampedCopyBloc, StampedCopyState>(
                            listener: (context, state) {
                              state.when(generateStampedCopy: (copy) async {
                                if (copy!.stamped!.endsWith('.pdf')) {
                                  Navigator.pop(context);
                                  const platform =
                                      MethodChannel('apkInstallerChannel');

                                  await platform.invokeMethod(
                                      'opengdrive', {"pdfUrl": copy.stamped});
                                } else if (copy.stamped!.endsWith('.png') ||
                                    copy.stamped!.endsWith('.jpg')) {
                                  Navigator.pop(context);
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      backgroundColor: Colors.white,
                                      surfaceTintColor: Colors.white,
                                      title: Row(
                                        children: [
                                          GestureDetector(
                                            child: SvgPicture.asset(
                                              'assets/svg/categories/back.svg',
                                              width: 10,
                                            ),
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Text(
                                            copy.transId ?? '',
                                            style: TextStyle(fontSize: 12.sp),
                                          )
                                        ],
                                      ),
                                      content: Container(
                                        padding: const EdgeInsets.all(0),
                                        height:
                                            MediaQuery.of(context).size.height /
                                                3,
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        decoration: const BoxDecoration(
                                            color: Colors.white),
                                        child: Image.network(
                                          copy.stamped ?? '',
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        loadingProgress
                                                            .expectedTotalBytes!
                                                    : null,
                                              ),
                                            );
                                          },
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  const SizedBox(
                                                      child: Center(
                                            child: Text('Image loading failed'),
                                          )),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      actions: [
                                        CupertinoDialogAction(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                              AppLocalizations.of(context)!
                                                  .close),
                                        )
                                      ],
                                    ),
                                  );
                                } else {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        if (Platform.isIOS) {
                                          return CupertinoAlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: const Text(
                                                'No signed copy attached'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        } else {
                                          return AlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: const Text(
                                                'No signed copy attached'),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        }
                                      });
                                }
                              }, stampedCopyFailed: () {
                                Navigator.pop(context);
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      if (Platform.isIOS) {
                                        return CupertinoAlertDialog(
                                          title: Text(
                                              AppLocalizations.of(context)!
                                                  .alert),
                                          content: const Text(
                                              'No signed copy attached'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                  AppLocalizations.of(context)!
                                                      .ok),
                                            ),
                                          ],
                                        );
                                      } else {
                                        return AlertDialog(
                                          title: Text(
                                              AppLocalizations.of(context)!
                                                  .alert),
                                          content: const Text(
                                              'No signed copy attached'),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                  AppLocalizations.of(context)!
                                                      .ok),
                                            ),
                                          ],
                                        );
                                      }
                                    });
                              }, stampedCopyLoading: () {
                                showCupertinoModalPopup(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (context) => SizedBox(
                                          height: MediaQuery.of(context)
                                              .size
                                              .height,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: const PopScope(
                                            canPop: true,
                                            child: CupertinoActivityIndicator(
                                              animating: true,
                                              color: Colors.red,
                                              radius: 30,
                                            ),
                                          ),
                                        ));
                              });
                            },
                            child: InkWell(
                              onTap: () {
                                context
                                    .read<StampedCopyBloc>()
                                    .add(const ClearStampedCopy());
                                context
                                    .read<StampedCopyBloc>()
                                    .add(const StampedCopyLoadingEvent());
                                context.read<StampedCopyBloc>().add(
                                    GenerateStampedCopyEvent(
                                        invId: widget.invoiceheader.id ?? ''));
                              },
                              child: Image.asset(
                                'assets/images/stamp.png',
                                height: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              // ignore: use_full_hex_values_for_flutter_colors
                              color: Color(0xff00000050),
                              blurRadius: 0.4,
                              spreadRadius: 0.4)
                        ]),
                    child: TextFormField(
                      controller: _invoiceDetailsSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context.read<InvoiceDetailsBloc>().add(
                                GetInvoiceDetailsEvent(
                                    id: widget.invoiceheader.id!,
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: AppLocalizations.of(context)!.searchHere,
                          hintStyle: kfontstyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          suffix: InkWell(
                            onTap: () {
                              _invoiceDetailsSearchCtrl.clear();
                              context.read<InvoiceDetailsBloc>().add(
                                  GetInvoiceDetailsEvent(
                                      id: widget.invoiceheader.id!,
                                      searchQuery: ''));
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 3,
                    fit: FlexFit.tight,
                    child: Text(
                      AppLocalizations.of(context)!.items,
                      style: boxHeading(),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                            AppLocalizations.of(context)!.type,
                            style: boxHeading(),
                          ),
                        ),
                        /* SizedBox(
                          width: 25.h,
                        ), */
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                            AppLocalizations.of(context)!.uom,
                            style: boxHeading(),
                          ),
                        ),
                        /*  SizedBox(
                          width: 22.h,
                        ), */
                        Text(
                          AppLocalizations.of(context)!.qty,
                          style: boxHeading(),
                        ),
                        SizedBox(
                          width: 10.h,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          Expanded(
              child: InvoiceDetailListWidget(
            invoiceheader: widget.invoiceheader,
            user: widget.user,
          ))
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: /* MediaQuery.of(context).size.width / 1.8 */ 30.h,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*  Divider(
              color: Colors.grey[300],
            ), */
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLocalizations.of(context)!.total_amount,
                    style:
                        TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
                  ),
                  /*BlocBuilder<InvoiceDetailsTotalCubit,
                      InvoiceDetailsTotalState>(
                    builder: (context, state) {
                      return Text(
                        state.amount,
                        style: TextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w600),
                      );
                    },
                  )*/
                  Text(
                    widget.invoiceheader.grandTotal ?? '',
                    style:
                        TextStyle(fontSize: 11.sp, fontWeight: FontWeight.w600),
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
