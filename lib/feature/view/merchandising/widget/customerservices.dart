import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/merchcusservicecount/merch_cus_service_count_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/customerservicesection/creditnote_requestscreen.dart';
import 'package:customer_connect/feature/view/merchandising/customerservicesection/customer_requestscreen.dart';
import 'package:customer_connect/feature/view/merchandising/customerservicesection/disputenote_requestscreen.dart';
import 'package:customer_connect/feature/view/merchandising/customerservicesection/return_requestscreen.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerServicesWidget extends StatefulWidget {
  final TextEditingController fromdatecontroller;
  final TextEditingController todatecontroller;
  const CustomerServicesWidget(
      {super.key,
      required this.fromdatecontroller,
      required this.todatecontroller});

  @override
  State<CustomerServicesWidget> createState() => _CustomerServicesWidgetState();
}

class _CustomerServicesWidgetState extends State<CustomerServicesWidget> {
  @override
  void initState() {
    context
        .read<MerchCusServiceCountBloc>()
        .add(const CusServiceCountClearevent());

    context.read<MerchCusServiceCountBloc>().add(GetCusserviceCountEvent(
        fromdate: fromdateController.text, // "2024-1-1",//
        toDate: todateController.text)); //"2024-8-7",));//
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CustomerRequestScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 1.5,
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/request@2x.png',
                              height: 28,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Text(
                                'Customer Requests',
                                style: kfontstyle(
                                    fontSize: 9.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Requests',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.newRequest}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Responded Requests',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.respondedReq}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MerchandiseCreditNoteRequestScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 1.5,
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/cnr@2x.png',
                              height: 28,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Text(
                                'Credit Note Requests',
                                style: kfontstyle(
                                    fontSize: 9.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Requested',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.reqCreditNoteReq}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Approved',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.approvedCreditNoteReq}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MerchandiseDisputeNoteRequestScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 1.5,
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/dr@2x.png',
                              height: 28,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Text(
                                'Dispute Note Requests',
                                style: kfontstyle(
                                    fontSize: 9.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Requested',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.reqDisputeNoteReq}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Approved',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.approvedDisputeNoteReq}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const MerchandiseReturnRequestScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            spreadRadius: 1.5,
                            blurRadius: 2)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/returnr@2x.png',
                              height: 28,
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: Text(
                                'Return Requests',
                                style: kfontstyle(
                                    fontSize: 9.sp,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Requested',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.reqReturnRequest}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Approved',
                              style: kfontstyle(
                                  fontSize: 8.sp, color: Colors.grey.shade600),
                            ),
                            BlocBuilder<MerchCusServiceCountBloc,
                                MerchCusServiceCountState>(
                              builder: (context, state) {
                                return state.when(
                                    getCusServiceCountState:
                                        (cusServicecount) => cusServicecount ==
                                                null
                                            ? Text(
                                                "0",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              )
                                            : Text(
                                                "${cusServicecount.approvedReturnRequest}",
                                                style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                    cusServiceCountFailedstate: () => Text(
                                          "0",
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                              color: const Color(0xff413434)),
                                        ));
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
