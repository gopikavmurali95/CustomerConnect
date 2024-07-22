import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_header_model/field_service_invoice_header_model.dart';
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldServiceInvoiceDetails extends StatefulWidget {
  final FieldServiceInvoiceHeaderModel header;
  const FieldServiceInvoiceDetails({super.key, required this.header});

  @override
  State<FieldServiceInvoiceDetails> createState() =>
      FieldServiceInvoiceDetailsState();
}

List<bool?> statuslist = [];
int loadingCount = 0;

class FieldServiceInvoiceDetailsState
    extends State<FieldServiceInvoiceDetails> {
  @override
  void initState() {
    context
        .read<FIeldServiceDetailBloc>()
        .add(GetAllFieldServiceDetailEvent(reqId: widget.header.sahId ?? ''));
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
          "Field service detail",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Row(
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
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.header.sjhNumber ?? '',
                            style: kfontstyle(
                              fontSize: 12.sp,
                              color: const Color(0xff2C6B9E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.header.cusCode} - ',
                                style: kfontstyle(
                                  fontSize: 11.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  widget.header.cusName ?? '',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            widget.header.transTime ?? '',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: widget.header.status!.isEmpty ||
                                widget.header.status != 'Action Taken'
                            ? widget.header.status == 'Rejected'
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
                          widget.header.status ?? '',
                          style: kfontstyle(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w400,
                              color: widget.header.status == 'Rejected'
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
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Item',
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
                        'UOM',
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Text(
                        'Qty',
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
                BlocListener<FIeldServiceDetailBloc, FIeldServiceDetailState>(
              listener: (context, state) {
                state.when(
                  getFieldServiceDetailState: (details) {
                    if (details != null) {
                      statuslist =
                          List.generate(details.length, (index) => null);
                    }
                  },
                  fieldServiceDetailFailedState: () {},
                );
              },
              child:
                  BlocBuilder<FIeldServiceDetailBloc, FIeldServiceDetailState>(
                builder: (context, state) {
                  return state.when(
                    getFieldServiceDetailState: (details) => details == null
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
                            itemBuilder: (context, index) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                                color: const Color(0xff7b70ac),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              details[index].prdName ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                details[index].sadUom ?? '',
                                                textAlign: TextAlign.end,
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54),
                                              ),
                                              /*SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          'Cs',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w400,
                                                              color: Colors.black54),
                                                        ),*/
                                            ],
                                          ),
                                          SizedBox(
                                            width: 50.w,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                details[index].sadQty ?? '',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54),
                                              ),
                                              /*SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          '2',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight: FontWeight.w400,
                                                              color: Colors.black54),
                                                        ),*/
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  /* Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Row(
                                          children: [
                                            Radio(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith<Color>(
                                                      (Set<MaterialState>
                                                          states) {
                                                return (statuslist[index] ==
                                                        true)
                                                    ? const Color(0xff0075ff)
                                                    : Colors.grey;
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
                                                showCupertinoDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      CupertinoAlertDialog(
                                                    title: const Text('Alert'),
                                                    content: const Text(
                                                        "Do you Want to Approve this product"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          setState(() {});
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          statuslist[index] =
                                                              true;
                                                          loadingCount = 0;
                                                          setState(() {});
                                                         

                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Proceed'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                            Text(
                                              'Approve',
                                              style: kfontstyle(),
                                            )
                                          ],
                                        ),
                                      ),
                                      Transform.scale(
                                        scale: 0.8,
                                        child: Row(
                                          children: [
                                            Radio(
                                              fillColor: MaterialStateProperty
                                                  .resolveWith<Color>(
                                                      (Set<MaterialState>
                                                          states) {
                                                return (statuslist[index] !=
                                                            null &&
                                                        !statuslist[index]!)
                                                    ? const Color(0xff0075ff)
                                                    : Colors.grey;
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
                                                showCupertinoDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      CupertinoAlertDialog(
                                                    title: const Text('Alert'),
                                                    content: const Text(
                                                        "Do you Want to Reject this product"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          setState(() {});
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Cancel'),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          statuslist[index] =
                                                              false;
                                                          loadingCount = 0;
                                                          setState(() {});

                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Proceed'),
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
                                              style: kfontstyle(),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ) */
                                ],
                              ),
                            ),
                            separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                            itemCount: details.length,
                          ),
                    fieldServiceDetailFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          BlocListener<FieldServiceInvoiceApprovalBloc,
              FieldServiceInvoiceApprovalState>(
            listener: (context, state) {
              state.when(
                getFieldServiceInvoiceApproval: (response) {
                  if (response != null) {
                    Navigator.pop(context);
                    // if (isApproval) {
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: const Text('Alert'),
                        content: Text(response.status ?? ''),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.read<FieldServiceHeaderBloc>().add(
                                  GetAllFieldServiceHeadersEvent(
                                      userId: widget.header.userID ?? '',
                                      searchQuery: ''));
                              Navigator.pop(context);
                              Navigator.pop(context);
                            },
                            child: const Text('Proceed'),
                          ),
                        ],
                      ),
                    );
                    // }
                  }
                },
                fieldServiceInvoiceApprovalFailed: () {
                  Navigator.pop(context);
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text('Alert'),
                      content: const Text(
                          "something went wrong, please try again later"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            context.read<FIeldServiceDetailBloc>().add(
                                GetAllFieldServiceDetailEvent(
                                    reqId: widget.header.sahId ?? ''));
                            Navigator.pop(context);
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
                fieldServiceInvoiceLoadingState: () {
                  // if (loadingCount == 0) {
                  loadingCount = 1;
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
                  // }
                },
              );
            },
            child: SizedBox(
              height: MediaQuery.of(context).size.width * 0.15,
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
                            height: 30.h,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: /* widget.materialrequest
                                                    . ==
                                                'Pending'
                                            ? */
                                Colors.red.shade300 /* : Colors.grey[300] */,
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (context) => CupertinoAlertDialog(
                                  title: const Text('Alert'),
                                  content: const Text(
                                      "Do you Want to Reject this request"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {});
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context
                                            .read<
                                                FieldServiceInvoiceApprovalBloc>()
                                            .add(
                                                const FieldServiceInvoicLoadingEvent());
                                        context
                                            .read<
                                                FieldServiceInvoiceApprovalBloc>()
                                            .add(InvoiceRejectEvent(
                                                reqID:
                                                    widget.header.sahId ?? '',
                                                userID: widget.header.userID ??
                                                    ''));
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Proceed'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Text(
                              'Reject',
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
                            height: 30.h,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: /* widget.materialrequest
                                                    . ==
                                                'Pending'
                                            ? */
                                Colors.green.shade300 /* : Colors.grey[300] */,
                            onPressed: () {
                              showCupertinoDialog(
                                context: context,
                                builder: (context) => CupertinoAlertDialog(
                                  title: const Text('Alert'),
                                  content: const Text(
                                      "Do you Want to Approve this product"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        setState(() {});
                                        Navigator.pop(context);
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context
                                            .read<
                                                FieldServiceInvoiceApprovalBloc>()
                                            .add(
                                                const FieldServiceInvoicLoadingEvent());
                                        context
                                            .read<
                                                FieldServiceInvoiceApprovalBloc>()
                                            .add(
                                                GetFieldServiceInvoiceApprovalEvent(
                                                    reqID:
                                                        widget.header.sahId ??
                                                            '',
                                                    userID:
                                                        widget.header.userID ??
                                                            ''));

                                        Navigator.pop(context);
                                      },
                                      child: const Text('Proceed'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Text(
                              'Approve',
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
            ),
          ),
        ],
      ),
    );
  }
} /*  */
