import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart';
import 'package:customer_connect/feature/view/arcollection/imagepreveiewscreen.dart';
import 'package:customer_connect/feature/view/arcollection/widgets/arddetailinvoicewidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ARDetailScreen extends StatefulWidget {
  final ArHeaderModel arheader;
  const ARDetailScreen({super.key, required this.arheader});

  @override
  State<ARDetailScreen> createState() => _ARDetailScreenState();
}

class _ARDetailScreenState extends State<ARDetailScreen> {
  @override
  void initState() {
    context.read<ArDetailsBloc>().add(const ClearArDetailEvent());
    context
        .read<ArDetailsBloc>()
        .add(GetArDetailsEvent(arhID: widget.arheader.arhId ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.arheader.image ?? '');
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
          "AR Detail ",
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.arheader.arhArNumber ?? '',
                        style: TextStyle(
                          fontSize: 13.sp,
                          color: const Color(0xff2C6B9E),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.arheader.cshCode} - ',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: const Color(0xff2C6B9E),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              widget.arheader.cshName ?? '',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.arheader.cusCode} - ',
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff413434)),
                          ),
                          Expanded(
                            child: Text(
                              widget.arheader.cusName ?? '',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 13.sp),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${widget.arheader.arhPayType?.trim()} | Route ${widget.arheader.rotName} | ${widget.arheader.date} | ${widget.arheader.time}',
                        style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          /*  SizedBox(
            height: 15.h,
          ), */
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Collected Amount:',
                      style: kfontstyle(fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text(
                      widget.arheader.arhCollectedAmount ?? '',
                      style: kfontstyle(
                          fontSize: 12.sp, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Container(
                  height: 14.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: const Color(0xffe4f7e2),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      widget.arheader.arhPayMode ?? '',
                      style: TextStyle(
                          fontSize: 10.sp, color: const Color(0xff413434)),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      widget.arheader;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ArImagePreviewScreen(
                            arheader: widget.arheader,
                          ),
                        ),
                      );
                    },
                    child: Text(
                      'Preview Image',
                      style: kfontstyle(
                        fontSize: 12.sp,
                        color: const Color(0xff899fc6),
                      ),
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 0.h,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Mode :',
                              style: kfontstyle(fontSize: 12.sp),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              widget.arheader.arhPayMode ?? "",
                              style: kfontstyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Visibility(
                          visible:
                              widget.arheader.arhPayMode == 'CH' ? true : false,
                          child: Row(
                            children: [
                              Text(
                                'Cheque # :',
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                widget.arheader.arpChequeNo ?? "",
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    child: Visibility(
                      visible:
                          widget.arheader.arhPayMode == 'CH' ? true : false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '',
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Expanded(
                                child: Text(
                                  "Bank : ${widget.arheader.bankName}",
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Cheque Date :',
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Expanded(
                                child: Text(
                                  widget.arheader.arpChequeDate ?? '',
                                  style: kfontstyle(
                                    fontSize: 12.sp,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 15.h,
          ),
          ARDetailInvoiceWidget(
            arheader: widget.arheader,
          )
        ],
      ),
    );
  }
}
