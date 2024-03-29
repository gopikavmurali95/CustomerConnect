import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart';
import 'package:customer_connect/feature/view/invoices/cusinsinvdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InsightInvoiceListWidget extends StatelessWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  const InsightInvoiceListWidget({
    super.key,
    required this.user,
    required this.customer,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: BlocBuilder<CusInsInvoiceHeaderBloc, CusInsInvoiceHeaderState>(
        builder: (context, state) {
          return state.when(
            getCusInvoiceHeaderState: (headers) => headers == null
                ? const Center(
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: Colors.red,
                      radius: 30,
                    ),
                  )
                : ListView.separated(
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CusInsInvoiceDetailScreen(
                                  customer: customer,
                                  invoice: headers[index],
                                  user: user,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      headers[index].invoiceNo ?? '',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 6.h,
                                    ),
                                    Text(
                                      '${headers[index].invoiceNo} | ${headers[index].time}',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    headers[index].grandTotal ?? '',
                                    style: kfontstyle(fontSize: 10.sp),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Container(
                                    height: 14.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        color: /* index % 2 == 0
                                            ? */
                                            const Color(
                                                0xffe3f7e2) /* : const Color(0xfff7f4e2)*/,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Center(
                                      child: Text(
                                        headers[index].status ?? '',
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
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: headers.length),
            getcusInvFailedState: () => Center(
              child: Text(
                'No Data Available',
                style: kfontstyle(),
              ),
            ),
          );
        },
      ),
    );
  }
}
