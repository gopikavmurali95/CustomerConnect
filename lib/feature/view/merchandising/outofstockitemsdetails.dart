import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_items_model/out_of_stock_items_model.dart';
import 'package:customer_connect/feature/state/bloc/outofstockitemcustomers/out_of_stock_item_customers_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/merchandoutofstockdetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutOfStockItemsDetailsScreen extends StatefulWidget {
  final OutOfStockItemsModel header;
  const OutOfStockItemsDetailsScreen({super.key, required this.header});

  @override
  State<OutOfStockItemsDetailsScreen> createState() => _OutOfStockScreenState();
}

TextEditingController outofStockItemsDetailSearchCtrl = TextEditingController();
Timer? debounce;

class _OutOfStockScreenState extends State<OutOfStockItemsDetailsScreen> {
  @override
  void initState() {
    outofStockItemsDetailSearchCtrl.clear();
    context
        .read<OutOfStockItemCustomersBloc>()
        .add(const ClearOutOfStockItemCustomersEvent());
    context.read<OutOfStockItemCustomersBloc>().add(
        GetOutOfStockItemCustomersEvent(
            searchQuery: '', osiID: widget.header.osiId ?? ''));
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
          AppLocalizations.of(context)!.outOfStockItems,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop){
           outofStockItemsDetailSearchCtrl.clear();
           outofStockItemsHeaderSearchCtrl.clear();
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
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
                                      widget.header.prdCode ?? '',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          overflow: TextOverflow.ellipsis,
                                          selectedLocale?.languageCode == 'en'
                                              ? widget.header.prdName ?? ''
                                              : widget.header.prdArName ?? '',
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              color: const Color.fromARGB(
                                                  255, 64, 65, 67)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 3),
                    child: Container(
                        height: 30.h,
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
                          style:
                              kfontstyle(fontSize: 13.sp, color: Colors.black87),
                          controller: outofStockItemsDetailSearchCtrl,
                          onChanged: (value) {
                           // outofStockItemsDetailSearchCtrl.clear();
                            debounce = Timer(
                              const Duration(
                                milliseconds: 300,
                              ),
                              () async {
                                context.read<OutOfStockItemCustomersBloc>().add(
                                    const ClearOutOfStockItemCustomersEvent());
                                context.read<OutOfStockItemCustomersBloc>().add(
                                      GetOutOfStockItemCustomersEvent(
                                          searchQuery: value.trim(),
                                          osiID: widget.header.osiId ?? ''),
                                    );
                              },
                            );
                          },
                          decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 15,
                              ),
                              suffix: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 5.h),
                                  Expanded(
                                    child: IconButton(
                                      onPressed: () {
                                        outofStockItemsDetailSearchCtrl.clear();
                                        context
                                            .read<OutOfStockItemCustomersBloc>()
                                            .add(GetOutOfStockItemCustomersEvent(
                                                searchQuery: '',
                                                osiID:
                                                    widget.header.osiId ?? ''));
                                      },
                                      icon: Icon(
                                        Icons.close,
                                        size: 13.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              hintText: AppLocalizations.of(context)!.searchHere,
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
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
                        )),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.outOfStockCustomers,
                          style: countHeading(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: BlocBuilder<OutOfStockItemCustomersBloc,
                              OutOfStockItemCustomersState>(
                            builder: (context, state) {
                              return Text(
                                state.when(
                                  getOutOfStockItemCustomersState: (details) =>
                                      details == null
                                          ? '0'
                                          : details.length.toString(),
                                  outofStateItemCustomersFailedState: () => '0',
                                ),
                                style: countHeading(),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: BlocBuilder<OutOfStockItemCustomersBloc,
                          OutOfStockItemCustomersState>(
                        builder: (context, state) {
                          return state.when(
                            getOutOfStockItemCustomersState: (details) => details ==
                                    null
                                ? Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 0),
                                    child: ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) =>
                                            ShimmerContainers(
                                                height: 40.h,
                                                width: double.infinity),
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                              color: Colors.grey[300],
                                            ),
                                        itemCount: 10),
                                  )
                                : details.isEmpty
                                    ? Center(
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .noDataAvailable,
                                          style: kfontstyle(),
                                        ),
                                      )
                                    : ListView.separated(
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (context, index) => GestureDetector(
                                                  child: Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 0.0),
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                          child: Row(
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      details[index]
                                                                              .cusCode ??
                                                                          '',
                                                                      style:
                                                                          kfontstyle(
                                                                        fontSize:
                                                                            12.sp,
                                                                        color: const Color(
                                                                            0xff2C6B9E),
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Text(
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          selectedLocale?.languageCode == 'en'
                                                                              ? details[index].cusName ??
                                                                                  ''
                                                                              : details[index].cusArName ??
                                                                                  '',
                                                                          style: kfontstyle(
                                                                              fontSize: 10
                                                                                  .sp,
                                                                              color: const Color.fromARGB(
                                                                                  255,
                                                                                  64,
                                                                                  65,
                                                                                  67)),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                              color: Colors.grey[300],
                                            ),
                                        itemCount: details.length),
                            outofStateItemCustomersFailedState: () => SizedBox(
                              height: MediaQuery.of(context).size.height - 200,
                              child: Center(
                                child: Text(
                                  AppLocalizations.of(context)!.noDataAvailable,
                                  style: kfontstyle(),
                                ),
                              ),
                            ),
                          );
                        },
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
