// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/view/totalorders/widgets/totalorderslist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:customer_connect/l10n/app_localizations.dart';

class TotalOrders extends StatefulWidget {
  final LoginUserModel user;
  const TotalOrders({super.key, required this.user});

  @override
  State<TotalOrders> createState() => _TotalOrdersState();
}

final _totaOrdersSearchCtrl = TextEditingController();
Timer? debounce;

class _TotalOrdersState extends State<TotalOrders> {
  @override
  void initState() {
    _totaOrdersSearchCtrl.clear();
    context.read<TotalOrdersHeaderBloc>().add(const TotalOrdersClearEvent());
    context.read<TotalOrdersHeaderBloc>().add(const TotalOrdersClearEvent());
    context.read<TotalOrdersHeaderBloc>().add(GetTotalOrdersEvent(
        ordersin: TotalOrdersInparas(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
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
          AppLocalizations.of(context)!.total_orders,
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
        onRefresh: () => _onRefreshTodaysDeivery(context),
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
                                color: Color(0xff00000050),
                                blurRadius: 0.4,
                                spreadRadius: 0.4)
                          ]),
                      child: TextFormField(
                        controller: _totaOrdersSearchCtrl,
                        onChanged: (value) {
                          if (debounce?.isActive ?? false) debounce!.cancel();
                          debounce = Timer(
                            const Duration(
                              milliseconds: 500,
                            ),
                            () async {
                              context
                                  .read<TotalOrdersHeaderBloc>()
                                  .add(const TotalOrdersClearEvent());
                              context.read<TotalOrdersHeaderBloc>().add(
                                  GetTotalOrdersEvent(
                                      ordersin: TotalOrdersInparas(
                                          area: '',
                                          customer: '',
                                          fromDate:
                                              '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                          outlet: '',
                                          route: '',
                                          subArea: '',
                                          toDate:
                                              '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                          userId: widget.user.usrId),
                                      searchQuery: ''));
                            },
                          );
                        },
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 20,
                            ),
                            hintText: AppLocalizations.of(context)!.searchHere,
                            hintStyle: const TextStyle(
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
                                _totaOrdersSearchCtrl.clear();
                                context
                                    .read<TotalOrdersHeaderBloc>()
                                    .add(const TotalOrdersClearEvent());
                                context.read<TotalOrdersHeaderBloc>().add(
                                    GetTotalOrdersEvent(
                                        ordersin: TotalOrdersInparas(
                                            area: '',
                                            customer: '',
                                            fromDate:
                                                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                            outlet: '',
                                            route: '',
                                            subArea: '',
                                            toDate:
                                                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
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
                        AppLocalizations.of(context)!.all,
                        style: countHeading(),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                      child: BlocBuilder<TotalOrdersHeaderBloc,
                          TotalOrdersHeaderState>(
                        builder: (context, state) {
                          return state.when(
                            getTotalOrderState: (count) => count != null
                                ? Text(
                                    "${count.length}",
                                    style: countHeading(),
                                  )
                                : Text(
                                    "0",
                                    style: countHeading(),
                                  ),
                            totalOrdersFailedState: () => Text(
                              "0",
                              style: countHeading(),
                            ),
                          );
                        },
                      ),
                    ),
                    // SizedBox(width: ,),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                TotalOrderList(
                  user: widget.user,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshTodaysDeivery(BuildContext context) async {
    _totaOrdersSearchCtrl.clear();
    context.read<TotalOrdersHeaderBloc>().add(const TotalOrdersClearEvent());
    context.read<TotalOrdersHeaderBloc>().add(GetTotalOrdersEvent(
        ordersin: TotalOrdersInparas(
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            userId: widget.user.usrId),
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }
}
