import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/ooscustomers/oos_customers_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/outofcustomerdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OutOfCustomerScreen extends StatefulWidget {
  final TextEditingController fromDate;
  final TextEditingController toDate;
  const OutOfCustomerScreen(
      {super.key, required this.fromDate, required this.toDate});

  @override
  State<OutOfCustomerScreen> createState() => _OutOfCustomerScreenState();
}

TextEditingController _oosCusCtrl = TextEditingController();
Timer? debounce;

class _OutOfCustomerScreenState extends State<OutOfCustomerScreen> {
  @override
  void initState() {
    context.read<OosCustomersBloc>().add(const ClearOosCustomersEvent());
    context.read<OosCustomersBloc>().add(GetOosCustomersEvent(
        searchQuery: '',
        fromDate: widget.fromDate.text,
        toDate: widget.toDate.text));
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
          // "Out Of Stock Customers",
          style: appHeading(),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
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
                        spreadRadius: 0.4,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: _oosCusCtrl,
                    style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                    onChanged: (value) {
                      debounce = Timer(
                          const Duration(
                            milliseconds: 300,
                          ), () async {
                        context.read<OosCustomersBloc>().add(
                            GetOosCustomersEvent(
                                searchQuery: value.trim(),
                                fromDate: widget.fromDate.text,
                                toDate: widget.toDate.text));
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
                                _oosCusCtrl.clear();
                                context
                                    .read<OosCustomersBloc>()
                                    .add(const ClearOosCustomersEvent());
                                context.read<OosCustomersBloc>().add(
                                    GetOosCustomersEvent(
                                        searchQuery: '',
                                        fromDate: widget.fromDate.text,
                                        toDate: widget.toDate.text));
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
                        fontWeight: FontWeight.normal,
                      ),
                      isDense: true,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    maxLength: 20,
                  ),
                ),
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
                    BlocBuilder<OosCustomersBloc, OosCustomersState>(
                      builder: (context, state) {
                        return Text(
                          state.when(
                            getOosCustomersState: (customers) =>
                                customers == null
                                    ? '0'
                                    : customers.length.toString(),
                            oosCustomersFailedState: () => '0',
                          ),
                          style: countHeading(),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: BlocBuilder<OosCustomersBloc, OosCustomersState>(
                  builder: (context, state) {
                    return state.when(
                      getOosCustomersState: (headers) => headers == null
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
                              child: ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      ShimmerContainers(
                                          height: 50.h, width: double.infinity),
                                  separatorBuilder: (context, index) => Divider(
                                        color: Colors.grey[300],
                                      ),
                                  itemCount: 10),
                            )
                          : headers.isEmpty
                              ? Center(
                                  child: Text(
                                   AppLocalizations.of(context)!.noDataAvailable,
                                    style: kfontstyle(),
                                  ),
                                )
                              : ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              OutOfStockCustomerDetailScreen(
                                            header: headers[index],
                                          ),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 40,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xfffee8e0),
                                                  borderRadius:
                                                      BorderRadius.circular(20),
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
                                                      headers[index].cusCode ??
                                                          '',
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff2C6B9E),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    Text(
                                                      headers[index].cusName ??
                                                          '',
                                                      style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 64, 65, 67),
                                                      ),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5),
                                                child: Text(
                                                  headers[index].prodCount ??
                                                      '',
                                                  style: countHeading(),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            color: Colors.grey[300],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  itemCount: headers.length,
                                ),
                      oosCustomersFailedState: () => SizedBox(
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
