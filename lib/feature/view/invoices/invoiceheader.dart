import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/invoice_header_inparas/invoice_header_inparas.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/invcubit/invoice_total_cubit.dart';
import 'package:customer_connect/feature/view/invoices/widgets/invoiceheaderlist.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class InvoiceHeaderScreen extends StatefulWidget {
  final bool isfromUser;
  final LoginUserModel user;
  const InvoiceHeaderScreen(
      {super.key, required this.isfromUser, required this.user});

  @override
  State<InvoiceHeaderScreen> createState() => _InvoiceHeaderScreenState();
}

final _invoiceHeaderSearchCtrl = TextEditingController();
Timer? debounce;

class _InvoiceHeaderScreenState extends State<InvoiceHeaderScreen> {
  @override
  void initState() {
    _invoiceHeaderSearchCtrl.clear();
    // context.read<InvoiceHeaderBloc>().add(const ClearInvoiceHeader());
    context.read<InvoiceTotalCubit>().getInvTotal([]);
    context.read<InvoiceHeaderBloc>().add(InvoiceHeaderSuccessEvent(
        invheaderin: InvoiceHeaderInparas(
            area: '',
            customer: '',
            customerOutlet: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            invoiceType: '',
            invoiceWith: '',
            paymentType: '',
            route: '',
            subArea: '',
            userId: widget.user.usrId),
        searchQuery: ''));
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
          AppLocalizations.of(context)!.invoices,
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
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshInvoice(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                      child: TextFormField(
                        controller: _invoiceHeaderSearchCtrl,

                        onChanged: (value) {
                          if (debounce?.isActive ?? false) debounce!.cancel();
                          debounce = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () async {
                              context.read<InvoiceHeaderBloc>().add(
                                  InvoiceHeaderSuccessEvent(
                                      invheaderin: InvoiceHeaderInparas(
                                          area: '',
                                          customer: '',
                                          customerOutlet: '',
                                          fromDate:
                                              '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                          invoiceType: '',
                                          invoiceWith: '',
                                          paymentType: '',
                                          route: '',
                                          subArea: '',
                                          toDate:
                                              '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                          userId: widget.user.usrId),
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
                                _invoiceHeaderSearchCtrl.clear();
                                context.read<InvoiceHeaderBloc>().add(
                                    InvoiceHeaderSuccessEvent(
                                        invheaderin: InvoiceHeaderInparas(
                                            area: '',
                                            customer: '',
                                            customerOutlet: '',
                                            fromDate:
                                                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                            toDate:
                                                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                            invoiceType: '',
                                            invoiceWith: '',
                                            paymentType: '',
                                            route: '',
                                            subArea: '',
                                            userId: widget.user.usrId),
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
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //SizedBox(width: 05,),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                      child: Text(
                        "${AppLocalizations.of(context)!.all} ${AppLocalizations.of(context)!.invoices}",
                        style: countHeading(),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                      child:
                          BlocListener<InvoiceHeaderBloc, InvoiceHeaderState>(
                        listener: (context, state) {
                          state.when(
                            invoiceHeaderSuccessState: (invheader) {
                              if (invheader != null) {
                                context
                                    .read<InvoiceTotalCubit>()
                                    .getInvTotal(invheader);
                              }
                            },
                            invoiceHeaderFailedState: () {},
                          );
                        },
                        child:
                            BlocBuilder<InvoiceHeaderBloc, InvoiceHeaderState>(
                          builder: (context, state) {
                            return state.when(
                              invoiceHeaderSuccessState: (invheader) =>
                                  invheader == null
                                      ? const SizedBox()
                                      : Text(
                                          // "80",
                                          invheader.length.toString(),
                                          style: countHeading(),
                                        ),
                              invoiceHeaderFailedState: () => Center(
                                child: Text(
                                  '0',
                                  style: kfontstyle(),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    // SizedBox(width: ,),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                InvoiceHeaderListWidget(
                  isfromUser: widget.isfromUser,
                  user: widget.user,
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppLocalizations.of(context)!.total_invoice_amount,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
              // BlocBuilder<CusInvTotalCounterCubit, CusInvTotalCounterState>(
              //   builder: (context, state) {
              //     return Text(
              //       state.amount,
              //       style:
              //           TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
              //     );
              //   },
              // )
              BlocBuilder<InvoiceTotalCubit, InvoiceTotalState>(
                builder: (context, state) {
                  double amount = double.tryParse(state.amount) ?? 0.0;
                  return Text(
                    formatAmount(amount),
                    // "0",
                    style: kfontstyle(
                        fontSize: 11.sp, fontWeight: FontWeight.w600),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshInvoice(BuildContext context) async {
    _invoiceHeaderSearchCtrl.clear();
    context.read<InvoiceTotalCubit>().getInvTotal([]);
    context.read<InvoiceHeaderBloc>().add(InvoiceHeaderSuccessEvent(
        invheaderin: InvoiceHeaderInparas(
            area: '',
            customer: '',
            customerOutlet: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            invoiceType: '',
            invoiceWith: '',
            paymentType: '',
            route: '',
            subArea: '',
            userId: widget.user.usrId),
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }

  String formatAmount(double amount) {
    return NumberFormat('#,##0.00', 'en_US').format(amount);
  }
}
