import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_customer_model/out_of_stock_customer_model.dart';
import 'package:customer_connect/feature/state/bloc/ooscustomerdetail/oos_customer_detail_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/merchandoutofcustomerdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutOfStockCustomerDetailScreen extends StatefulWidget {
  final OutOfStockCustomerModel header;
  const OutOfStockCustomerDetailScreen({super.key, required this.header});

  @override
  State<OutOfStockCustomerDetailScreen> createState() =>
      _OutOfStockScreenState();
}

TextEditingController _oosCusDetailCtrl = TextEditingController();
Timer? debounce;

class _OutOfStockScreenState extends State<OutOfStockCustomerDetailScreen> {
  @override
  void initState() {
    _oosCusDetailCtrl.clear();
    context
        .read<OosCustomerDetailBloc>()
        .add(const ClearOosCustomerDetilEvent());
    context.read<OosCustomerDetailBloc>().add(GetOosCustomerDetailEvent(
        searchQuery: '', cusID: widget.header.cusId ?? ""));
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
          AppLocalizations.of(context)!.outOfStockCustomers,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) => {
          _oosCusDetailCtrl.clear(),
          oosCusCtrl.clear(),
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
                                      widget.header.cusCode ?? '',
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
                                              ? widget.header.cusName ?? ''
                                              : widget.header.cusArName ?? '',
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
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 3, top: 10),
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
                          controller: _oosCusDetailCtrl,
                          onChanged: (value) {
                            debounce = Timer(
                                const Duration(
                                  milliseconds: 300,
                                ), () async {
                              context.read<OosCustomerDetailBloc>().add(
                                  GetOosCustomerDetailEvent(
                                      searchQuery: value.trim(),
                                      cusID: widget.header.cusId ?? ""));
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
                                        _oosCusDetailCtrl.clear();
                                        context.read<OosCustomerDetailBloc>().add(
                                            const ClearOosCustomerDetilEvent());
                                        context
                                            .read<OosCustomerDetailBloc>()
                                            .add(GetOosCustomerDetailEvent(
                                                searchQuery: '',
                                                cusID:
                                                    widget.header.cusId ?? ""));
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
                          child: BlocBuilder<OosCustomerDetailBloc,
                              OosCustomerDetailState>(
                            builder: (context, state) {
                              return Text(
                                state.when(
                                  getOosCustomerDetailsState: (details) =>
                                      details == null
                                          ? '0'
                                          : details.length.toString(),
                                  oosCustomersDetailFailedState: () => '0',
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
                      child: BlocBuilder<OosCustomerDetailBloc,
                          OosCustomerDetailState>(
                        builder: (context, state) {
                          return state.when(
                            getOosCustomerDetailsState: (details) => details ==
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
                                                  // onTap: () {
                                                  //   Navigator.push(
                                                  //     context,
                                                  //     MaterialPageRoute(
                                                  //         builder: (context) =>
                                                  //             const OutOfStockCustomerDetailScreen()),
                                                  //   );
                                                  // },
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
                                                                        Text(
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          selectedLocale?.languageCode == 'en'
                                                                              ? details[index].prdName ?? ''
                                                                              : details[index].prdArName ?? '',
                                                                          style: kfontstyle(
                                                                              fontSize: 10.sp,
                                                                              color: const Color.fromARGB(255, 64, 65, 67)),
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
                            oosCustomersDetailFailedState: () => SizedBox(
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
