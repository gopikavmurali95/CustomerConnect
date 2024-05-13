import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FieldServiceInvoiceDetails extends StatefulWidget {
  const FieldServiceInvoiceDetails({super.key});

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
        .add(const GetAllFieldServiceDetailEvent(reqId: '26'));
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
          "Invoice Approval",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
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
                                  BlocConsumer<FieldServiceInvoiceApprovalBloc,
                                      FieldServiceInvoiceApprovalState>(
                                    listener: (context, state) {
                                      state.when(
                                        getFieldServiceInvoiceApproval:
                                            (response) {
                                          if (response != null) {
                                            Navigator.pop(context);
                                            // if (isApproval) {
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: const Text('Alert'),
                                                content:
                                                    Text(response.status ?? ''),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      context
                                                          .read<
                                                              FIeldServiceDetailBloc>()
                                                          .add(
                                                              const GetAllFieldServiceDetailEvent(
                                                                  reqId: '26'));
                                                      Navigator.pop(context);
                                                    },
                                                    child:
                                                        const Text('Proceed'),
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
                                            builder: (context) =>
                                                CupertinoAlertDialog(
                                              title: const Text('Alert'),
                                              content: const Text(
                                                  "something went wrong, please try again later"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    context
                                                        .read<
                                                            FIeldServiceDetailBloc>()
                                                        .add(
                                                            const GetAllFieldServiceDetailEvent(
                                                                reqId: '26'));
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                        fieldServiceInvoiceLoadingState: () {
                                          if (loadingCount == 0) {
                                            loadingCount = 1;
                                            showCupertinoModalPopup(
                                                context: context,
                                                barrierDismissible: false,
                                                builder: (context) => SizedBox(
                                                      height:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .height,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      child: const PopScope(
                                                        canPop: true,
                                                        child:
                                                            CupertinoActivityIndicator(
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
                                    builder: (context, state) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Transform.scale(
                                            scale: 0.8,
                                            child: Row(
                                              children: [
                                                Radio(
                                                  fillColor:
                                                      MaterialStateProperty
                                                          .resolveWith<
                                                              Color>((Set<
                                                                  MaterialState>
                                                              states) {
                                                    return (statuslist[index] ==
                                                            true)
                                                        ? const Color(
                                                            0xff0075ff)
                                                        : Colors.grey;
                                                  }),
                                                  /* activeColor: isselected == true
                                                                                                                                                                                                                                                ? const Color(0xff0075ff)
                                                                                                                                                                                                                                                : Colors.grey, */
                                                  value:
                                                      statuslist[index] == null
                                                          ? false
                                                          : statuslist[index] ==
                                                                  true
                                                              ? true
                                                              : false,
                                                  groupValue: true,
                                                  onChanged: (value) {
                                                    showCupertinoDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          CupertinoAlertDialog(
                                                        title:
                                                            const Text('Alert'),
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
                                                              statuslist[
                                                                  index] = true;
                                                              loadingCount = 0;
                                                              setState(() {});
                                                              context
                                                                  .read<
                                                                      FieldServiceInvoiceApprovalBloc>()
                                                                  .add(
                                                                      const FieldServiceInvoicLoadingEvent());
                                                              context
                                                                  .read<
                                                                      FieldServiceInvoiceApprovalBloc>()
                                                                  .add(const GetFieldServiceInvoiceApprovalEvent(
                                                                      reqID: '',
                                                                      userID:
                                                                          ''));

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
                                                  fillColor:
                                                      MaterialStateProperty
                                                          .resolveWith<
                                                              Color>((Set<
                                                                  MaterialState>
                                                              states) {
                                                    return (statuslist[index] !=
                                                                null &&
                                                            !statuslist[index]!)
                                                        ? const Color(
                                                            0xff0075ff)
                                                        : Colors.grey;
                                                  }),
                                                  /*  activeColor: isselected == false
                                                                                                                                                                                                                                                ? const Color(0xff0075ff)
                                                                                                                                                                                                                                                : Colors.grey, */
                                                  value:
                                                      statuslist[index] == null
                                                          ? true
                                                          : statuslist[index] ==
                                                                  true
                                                              ? true
                                                              : false,
                                                  groupValue: false,
                                                  onChanged: (value) {
                                                    showCupertinoDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          CupertinoAlertDialog(
                                                        title:
                                                            const Text('Alert'),
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
                                                              statuslist[
                                                                      index] =
                                                                  false;
                                                              loadingCount = 0;
                                                              setState(() {});
                                                              /*context
                                                                            .read<
                                                                                VanToVanApprovalBloc>()
                                                                            .add(
                                                                                const VanToVanApprovalLoadingEvent());
                                                                        context
                                                                            .read<
                                                                                VanToVanApprovalBloc>()
                                                                            .add(
                                                                              GetVanToVanApprovalEent(
                                                                                  approvalIn: VanToVanApprovalInParas(
                                                                                      hqty:
                                                                                          '',
                                                                                      lqty:
                                                                                          '',
                                                                                      reqID:
                                                                                          '10',
                                                                                      status:
                                                                                          'R',
                                                                                      userID:
                                                                                          '48',
                                                                                      vvdId:
                                                                                          '')),
                                                                            );*/
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
                                      );
                                    },
                                  ),
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
          )
        ],
      ),
    );
  }
}
