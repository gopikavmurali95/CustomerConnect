import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
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
            child: BlocBuilder<FIeldServiceDetailBloc, FIeldServiceDetailState>(
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
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
          )
        ],
      ),
    );
  }
}
