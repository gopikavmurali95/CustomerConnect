import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart';
import 'package:customer_connect/feature/view/customeritemlist/widgets/customeritemlistwidget.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerItemList extends StatefulWidget {
  final CusInsCustomersModel customer;
  final LoginUserModel user;
  const CustomerItemList(
      {super.key, required this.customer, required this.user});

  @override
  State<CustomerItemList> createState() => _CustomerItemListState();
}

final _cusItemSearchCtrl = TextEditingController();
Timer? debounce;

class _CustomerItemListState extends State<CustomerItemList> {
  @override
  void initState() {
    _cusItemSearchCtrl.clear();
    context.read<CusItemsBloc>().add(const ClearItemsEvent());
    context.read<CusItemsBloc>().add(GetItemsEvent(
        cusID: widget.customer.cusId ?? '',
        route: widget.customer.rotId ?? '',
        searchQuery: ''));
    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    _cusItemSearchCtrl.clear();
    context.read<CusItemsBloc>().add(const ClearItemsEvent());
    context.read<CusItemsBloc>().add(GetItemsEvent(
        cusID: widget.customer.cusId ?? '',
        route: widget.customer.rotId ?? '',
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    log(widget.customer.rotId ?? '');
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
          AppLocalizations.of(context)!.customerItemList,
          style: appHeading(),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
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
                          SizedBox(
                            // height: 55.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '${widget.customer.cusCode} - ',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 160.w,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        widget.customer.cusName ?? "",
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
                                      '${widget.customer.headerCode} - ',
                                      style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                    SizedBox(
                                      width: 200.w,
                                      child: Text(
                                        widget.customer.headerName ?? "",
                                        overflow: TextOverflow.ellipsis,
                                        style: kfontstyle(fontSize: 12.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${widget.customer.cusType} | ${widget.customer.className} | ${widget.customer.areaName} ',
                                  style: kfontstyle(
                                      fontSize: 10.sp, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Container(
                      height: 35.h,
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
                        controller: _cusItemSearchCtrl,
                        onChanged: (value) {
                          if (debounce?.isActive ?? false) debounce!.cancel();
                          debounce = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () async {
                              context
                                  .read<CusItemsBloc>()
                                  .add(const ClearItemsEvent());
                              context.read<CusItemsBloc>().add(GetItemsEvent(
                                  cusID: widget.customer.cusId ?? '',
                                  route: widget.customer.rotId ?? '',
                                  searchQuery: value.trim()));
                            },
                          );
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 20,
                            ),
                            suffix: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5.h),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {
                                      _cusItemSearchCtrl.clear();
                                      context
                                          .read<CusItemsBloc>()
                                          .add(const ClearItemsEvent());
                                      context.read<CusItemsBloc>().add(
                                            GetItemsEvent(
                                                cusID:
                                                    widget.customer.cusId ?? '',
                                                route:
                                                    widget.customer.rotId ?? '',
                                                searchQuery: ''),
                                          );
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      size: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            hintText:
                                "${AppLocalizations.of(context)!.searchHere}..",
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
                Container(
                  height: 30.h,
                  width: double.infinity,
                  color: const Color(0xfff5f5f5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Text(
                            AppLocalizations.of(context)!.item,
                            style: boxHeading(),
                          ),
                        ),
                        /* SizedBox(
                          width: 10.w,
                        ), */
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.uom,
                                style: boxHeading(),
                              ),
                              SizedBox(
                                width: selectedLocale?.languageCode == "en"
                                    ? 60.w
                                    : 50.w,
                              ),
                              Text(
                                AppLocalizations.of(context)!.price,
                                style: boxHeading(),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                    // height: MediaQuery.of(context).size.height,
                    child: CustomerItemListWidget())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
