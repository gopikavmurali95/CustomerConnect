import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/outofstockcount/outofstockcount_bloc.dart';

import 'package:customer_connect/feature/view/merchandising/merchandoutofcustomerdetails.dart';
import 'package:customer_connect/feature/view/merchandising/merchandoutofstockdetailscreen.dart';

import 'package:customer_connect/feature/view/merchandising/widget/calenderwidget.dart';
import 'package:customer_connect/feature/view/merchandising/widget/customerservices.dart';
import 'package:customer_connect/feature/view/merchandising/widget/outletactivities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MerchandisingScreen extends StatefulWidget {
  const MerchandisingScreen({super.key});

  @override
  State<MerchandisingScreen> createState() => _MerchandisingScreenState();
}

DateTime selectedDate = DateTime.now();
final fromdateController = TextEditingController();
final todateController = TextEditingController();

class _MerchandisingScreenState extends State<MerchandisingScreen> {
  @override
  void initState() {
    fromdateController.text =
        '${DateTime.now().year}-${DateTime.now().month}-1';
    todateController.text =
        '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}';
    context.read<OutofstockcountBloc>().add(const ClearOutOfStockCountEvent());

    context.read<OutofstockcountBloc>().add(GetOutOfStockCountEvent(
        fromDate: fromdateController.text, toDate: todateController.text));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
           AppLocalizations.of(context)!.merchandisingDashBoard,
          //"Merchandising Dashboard",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2.h,
              ),
              MerchandisingCalender(
                  fromDateController: fromdateController,
                  toDateController: todateController),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppLocalizations.of(context)!.inventoryMonitoring,
                //'Inventory Monitoring',
                style: countHeading(),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: double.infinity,
                //height: 80.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 1.5,
                          blurRadius: 2)
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //////////////////////////////////
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/outofstock@2x.png',
                            height: 28,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Text(
                              AppLocalizations.of(context)!.outOfStocks,
                              // 'Out Of Stocks',
                              style: kfontstyle(
                                fontSize: 9.sp,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          BlocBuilder<OutofstockcountBloc,
                              OutofstockcountState>(
                            builder: (context, state) {
                              return state.when(
                                getOutOfStockCountState: (count) =>
                                    count == null
                                        ? const Text("0")
                                        : Text(count.transCount ?? '0'),
                                outOfStockFailedState: () => const Text("0"),
                              );
                            },
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 7,
                            decoration: BoxDecoration(
                              color: const Color(0xfffee8e0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OutOfStockScreen(
                                      fromDateCtrl: fromdateController,
                                      toDateCtrl: todateController,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                "OOS ${AppLocalizations.of(context)!.items}",
                                // 'OOS Items',
                                style: kfontstyle(
                                  fontSize: 8.sp,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                          ),
                          BlocBuilder<OutofstockcountBloc,
                              OutofstockcountState>(
                            builder: (context, state) {
                              return state.when(
                                  getOutOfStockCountState: (count) =>
                                      count == null
                                          ? const Text("0")
                                          : Text("${count.itemCount}"),
                                  outOfStockFailedState: () => const Text("0"));
                            },
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Container(
                            height: 30,
                            width: 7,
                            decoration: BoxDecoration(
                              color: const Color(0xfffee8e0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => OutOfCustomerScreen(
                                      fromDate: fromdateController,
                                      toDate: todateController,
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'OOS ${AppLocalizations.of(context)!.customers}',
                                style: kfontstyle(
                                  fontSize: 8.sp,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            ),
                          ),
                          BlocBuilder<OutofstockcountBloc,
                              OutofstockcountState>(
                            builder: (context, state) {
                              return state.when(
                                  getOutOfStockCountState: (count) =>
                                      count == null
                                          ? const Text("0")
                                          :
                                          //counts.saleOrder ?? "",
                                          Text(count.cusCount ?? ""),
                                  //Text("${count.cusCount}"),
                                  outOfStockFailedState: () => const Text("0"));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                AppLocalizations.of(context)!.outletActivities,
                // 'Outlet Activities',
                style: countHeading(),
              ),
              SizedBox(
                height: 10.h,
              ),
              OutletAcivitiesWidget(
                fromdatecontroller: fromdateController,
                todatecontroller: todateController,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                AppLocalizations.of(context)!.customerServices,
                // 'Customer Services',
                style: countHeading(),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomerServicesWidget(
                fromdatecontroller: fromdateController,
                todatecontroller: fromdateController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
