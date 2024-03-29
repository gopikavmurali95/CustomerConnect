import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/invoice_header_inparas/invoice_header_inparas.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart';
import 'package:customer_connect/feature/view/invoices/widgets/invoiceheaderlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoiceHeaderScreen extends StatefulWidget {
  final bool isfromUser;
  final LoginUserModel user;
  const InvoiceHeaderScreen(
      {super.key, required this.isfromUser, required this.user});

  @override
  State<InvoiceHeaderScreen> createState() => _InvoiceHeaderScreenState();
}

class _InvoiceHeaderScreenState extends State<InvoiceHeaderScreen> {
  @override
  void initState() {
    context.read<InvoiceHeaderBloc>().add(const ClearInvoiceHeader());
    context.read<InvoiceHeaderBloc>().add(InvoiceHeaderSuccessEvent(
        invheaderin: InvoiceHeaderInparas(
            area: '',
            customer: '',
            customerOutlet: '',
            fromDate: '01-01-2023',
            toDate: '25-03-2024',
            invoiceType: '',
            invoiceWith: '',
            paymentType: '',
            route: '',
            subArea: '',
            userId: widget.user.usrId)));
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
          "Invoices ",
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
      body: BlocBuilder<InvoiceHeaderBloc, InvoiceHeaderState>(
        builder: (context, state) {
          return state.when(
            invoiceHeaderSuccessState: (invheader) => invheader == null
                ? const Center(
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: Colors.red,
                      radius: 30,
                    ),
                  )
                : Column(
                    children: [
                      Visibility(
                        visible: widget.isfromUser,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
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
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'A025206 - ',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff2C6B9E),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            'Tromp, Muller and Mitchell',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff413434)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '199525 - ',
                                          style: kfontstyle(
                                              fontSize: 11.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                        Expanded(
                                          child: Text(
                                            'Carrefour Hypermarket',
                                            overflow: TextOverflow.ellipsis,
                                            style: kfontstyle(fontSize: 12.sp),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Virtual | Supermarket | Dubai ',
                                      style: kfontstyle(
                                          fontSize: 10.sp, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Container(
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
                            child: TextField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.search,
                                    size: 20,
                                  ),
                                  hintText: "Search Invoices",
                                  hintStyle: kfontstyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                  isDense: true,
                                  counterText: "",
                                  contentPadding: const EdgeInsets.all(15.0),
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none)),
                              textAlign: TextAlign.start,
                              maxLines: 1,
                              maxLength: 20,
                              // controller: _locationNameTextController,
                            )),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //SizedBox(width: 05,),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 10),
                            child: Text(
                              "All invoices",
                              style: countHeading(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 10),
                            child: Text(
                              // "80",
                              invheader.length.toString(),
                              style: countHeading(),
                            ),
                          ),
                          // SizedBox(width: ,),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                          child: InvoiceHeaderListWidget(
                        isfromUser: widget.isfromUser,
                      ))
                    ],
                  ),
            invoiceHeaderFailedState: () => const SizedBox(),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<InvoiceHeaderBloc, InvoiceHeaderState>(
        builder: (context, state) {
          return state.when(
              invoiceHeaderSuccessState: (invoiceheader) =>
                  invoiceheader == null
                      ? const SizedBox()
                      : Container(
                          decoration: const BoxDecoration(boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                color: Colors.black12,
                                blurStyle: BlurStyle.outer,
                                offset: Offset(3, 3))
                          ]),
                          height: 40.h,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Total Invoice Amount',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  '1200.00',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                        ),
              invoiceHeaderFailedState: () => const SizedBox());
        },
      ),
    );
  }
}
