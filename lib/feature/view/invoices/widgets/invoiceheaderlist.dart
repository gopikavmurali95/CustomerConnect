import 'package:customer_connect/constants/fonts.dart';
// import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart';
import 'package:customer_connect/feature/view/invoices/inovicedetails.dart';
// import 'package:customer_connect/feature/widgets/shimmer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceHeaderListWidget extends StatelessWidget {
  final bool isfromUser;
  const InvoiceHeaderListWidget({super.key, required this.isfromUser});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InvoiceHeaderBloc, InvoiceHeaderState>(
      builder: (context, state) {
        return state.when(
          invoiceHeaderSuccessState: (invheader) => invheader == null
              // ? ListView.separated(
              //     physics: const NeverScrollableScrollPhysics(),
              //     shrinkWrap: true,
              //     itemBuilder: (context, index) =>
              //         ShimmerContainers(height: 60.h, width: double.infinity),
              //     separatorBuilder: (context, index) => Divider(
              //           color: Colors.grey[300],
              //         ),
              //     itemCount: 10)
              ? const SizedBox()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.separated(
                      itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              //context.read<InvoiceDetailsBloc>().add(GetInvoiceDetailsEvent(id: invheader))
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InvoiceDetailScreen(
                                    isfromUser: isfromUser,
                                    invoiceheader: invheader[index],
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: const Color(0xff95cbdb),
                                  child: Image.asset(
                                    'assets/images/listicon.png',
                                    height: 20.h,
                                    width: 20.w,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        invheader[index].invoiceNo ?? '',
                                        style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff2C6B9E),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            invheader[index].cusCode ?? '',
                                            style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff2C6B9E),
                                            ),
                                          ),
                                          Text(
                                            ' - ',
                                            style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff2C6B9E),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              overflow: TextOverflow.ellipsis,
                                              invheader[index].cusName ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff413434)),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            invheader[index].cusOutCode ?? '',
                                            style: kfontstyle(
                                                fontSize: 11.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                          Text(
                                            ' - ',
                                            style: kfontstyle(
                                                fontSize: 11.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                          Expanded(
                                            child: Text(
                                              invheader[index].cusOutName ?? '',
                                              overflow: TextOverflow.ellipsis,
                                              style:
                                                  kfontstyle(fontSize: 11.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          // Text(
                                          //   'CR | Route 101 | 16 May 2023 | 10:35',
                                          //   style: kfontstyle(
                                          //       fontSize: 10.sp,
                                          //       color: Colors.grey),
                                          // ),
                                          Text(
                                            invheader[index].payType ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            ' | ',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            invheader[index].rotName ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            ' | ',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            invheader[index].date ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            ' | ',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            invheader[index].time ?? '',
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      invheader[index].grandTotal ?? '',
                                      style: kfontstyle(fontSize: 13.sp),
                                    ),
                                    Container(
                                      height: 14.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          color: invheader[index].invoiceType ==
                                                  'DI'
                                              ? const Color(0xffe3f7e2)
                                              : const Color(0xfff7f4e2),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Text(
                                          invheader[index].invoiceType ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                      separatorBuilder: (context,
                              index) => /* const SizedBox(
                    height: 10,
                  ) */
                          Divider(
                            color: Colors.grey[300],
                          ),
                      itemCount: invheader.length),
                ),
          invoiceHeaderFailedState: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
