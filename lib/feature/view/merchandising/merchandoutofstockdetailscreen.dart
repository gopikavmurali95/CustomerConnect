import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/outofstockitems/out_of_stock_items_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/outofstockitemsdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:developer';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OutOfStockScreen extends StatefulWidget {
  final TextEditingController fromDateCtrl;
  final TextEditingController toDateCtrl;
  const OutOfStockScreen(
      {super.key, required this.fromDateCtrl, required this.toDateCtrl});

  @override
  State<OutOfStockScreen> createState() => _OutOfStockScreenState();
}

TextEditingController outofStockItemsHeaderSearchCtrl = TextEditingController();
Timer? debounce;

class _OutOfStockScreenState extends State<OutOfStockScreen> {
  @override
  void initState() {
    log(widget.fromDateCtrl.text);
    log(widget.toDateCtrl.text);
    outofStockItemsHeaderSearchCtrl.clear();
    context.read<OutOfStockItemsBloc>().add(const ClearOutOfStockItems());
    context.read<OutOfStockItemsBloc>().add(GetOutOfStockItemsEvent(
        searchQuery: '',
        fromDate: widget.fromDateCtrl.text,
        toDate: widget.toDateCtrl.text));
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
          // "Out Of Stock Items",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10, bottom: 3),
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
                            style: kfontstyle(
                                fontSize: 13.sp, color: Colors.black87),
                            controller: outofStockItemsHeaderSearchCtrl,
                            onChanged: (value) {
                              //outofStockItemsHeaderSearchCtrl.clear();
                              debounce = Timer(
                                  const Duration(
                                    milliseconds: 300,
                                  ), () async {
                                context.read<OutOfStockItemsBloc>().add(
                                    GetOutOfStockItemsEvent(
                                        searchQuery: value.trim(),
                                        fromDate: widget.fromDateCtrl.text,
                                        toDate: widget.toDateCtrl.text));
                              });
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
                                          outofStockItemsHeaderSearchCtrl
                                              .clear();
                                          context
                                              .read<OutOfStockItemsBloc>()
                                              .add(
                                                  const ClearOutOfStockItems());
                                          context
                                              .read<OutOfStockItemsBloc>()
                                              .add(GetOutOfStockItemsEvent(
                                                  searchQuery: '',
                                                  fromDate:
                                                      widget.fromDateCtrl.text,
                                                  toDate:
                                                      widget.toDateCtrl.text));
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
                                    AppLocalizations.of(context)!.searchHere,
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
                            // controller: _locationNameTextController,
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
                            AppLocalizations.of(context)!.outOfStockItems,
                            style: countHeading(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: BlocBuilder<OutOfStockItemsBloc,
                                OutOfStockItemsState>(
                              builder: (context, state) {
                                return Text(
                                  state.when(
                                    getOutOfSockItemsState: (headers) =>
                                        headers == null
                                            ? '0'
                                            : headers.length.toString(),
                                    outOfStockItemsFailedState: () => '0',
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
                    BlocBuilder<OutOfStockItemsBloc, OutOfStockItemsState>(
                      builder: (context, state) {
                        return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: state.when(
                              getOutOfSockItemsState: (headers) => headers ==
                                      null
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
                                      child: ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) =>
                                              ShimmerContainers(
                                                  height: 50.h,
                                                  width: double.infinity),
                                          separatorBuilder: (context, index) =>
                                              Divider(
                                                color: Colors.grey[300],
                                              ),
                                          itemCount: 10),
                                    )
                                  : headers.isEmpty
                                      ? Center(
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .noDataAvailable,
                                            style: kfontstyle(),
                                          ),
                                        )
                                      : ListView.builder(
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder:
                                              (context, index) =>
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.push(
                                                        context,
                                                        Platform.isIOS
                                                            ? CupertinoPageRoute(
                                                                builder: (context) =>
                                                                    OutOfStockItemsDetailsScreen(
                                                                        header: headers[
                                                                            index]))
                                                            : MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        OutOfStockItemsDetailsScreen(
                                                                          header:
                                                                              headers[index],
                                                                        )),
                                                      );
                                                    },
                                                    child: Column(
                                                      children: [
                                                        InkWell(
                                                          onTap: () {
                                                            Navigator.push(
                                                              context,
                                                              Platform.isIOS
                                                                  ? CupertinoPageRoute(
                                                                      builder: (context) => OutOfStockItemsDetailsScreen(
                                                                          header: headers[
                                                                              index]))
                                                                  : MaterialPageRoute(
                                                                      builder:
                                                                          (context) =>
                                                                              OutOfStockItemsDetailsScreen(
                                                                                header: headers[index],
                                                                              )),
                                                            );
                                                          },
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                height: 40,
                                                                width: 10,
                                                                decoration: BoxDecoration(
                                                                    color: const Color(
                                                                        0xfffee8e0),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            20)),
                                                              ),
                                                              SizedBox(
                                                                width: 10.w,
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      headers[index]
                                                                              .prdCode ??
                                                                          '',
                                                                      style:
                                                                          kfontstyle(
                                                                        fontSize:
                                                                            12.sp,
                                                                        color: const Color(
                                                                            0xff2C6B9E),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      children: [
                                                                        Expanded(
                                                                          child:
                                                                              Text(
                                                                            selectedLocale?.languageCode == 'en'
                                                                                ? headers[index].prdName ?? ''
                                                                                : headers[index].prdArName ?? '',
                                                                            style:
                                                                                kfontstyle(fontSize: 10.sp, color: const Color.fromARGB(255, 64, 65, 67)),
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsets
                                                                    .symmetric(
                                                                    horizontal:
                                                                        5),
                                                                child: Text(
                                                                  headers[index]
                                                                          .cusCount ??
                                                                      '',
                                                                  style:
                                                                      countHeading(),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          color:
                                                              Colors.grey[300],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                          itemCount: headers.length),
                              outOfStockItemsFailedState: () => SizedBox(
                                height:
                                    MediaQuery.of(context).size.height - 200,
                                child: Center(
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .noDataAvailable,
                                    style: kfontstyle(),
                                  ),
                                ),
                              ),
                            ));
                      },
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
