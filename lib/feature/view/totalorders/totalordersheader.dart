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

class TotalOrders extends StatefulWidget {
  final LoginUserModel user;
  const TotalOrders({super.key, required this.user});

  @override
  State<TotalOrders> createState() => _TotalOrdersState();
}

final _totalOrderSearchCtrl = TextEditingController();
Timer? debounce;

class _TotalOrdersState extends State<TotalOrders> {
  @override
  void initState() {
    _totalOrderSearchCtrl.clear();
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
          "Total Orders ",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                  controller: _totalOrderSearchCtrl,
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
                            searchQuery: value.trim()));
                      },
                    );
                  },
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      hintText: "Search here.. ",
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
                          _totalOrderSearchCtrl.clear();
                          context
                              .read<TotalOrdersHeaderBloc>()
                              .add(const TotalOrdersClearEvent());
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
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Text(
                  "All ",
                  style: countHeading(),
                ),
              ),
              BlocBuilder<TotalOrdersHeaderBloc, TotalOrdersHeaderState>(
                builder: (context, state) {
                  return state.when(
                      getTotalOrderState: (totalOrders) => Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20,
                              top: 10,
                            ),
                            child: Text(
                              totalOrders == null
                                  ? "0"
                                  : totalOrders.length.toString(),
                              style: countHeading(),
                            ),
                          ),
                      totalOrdersFailedState: () => Padding(
                            padding: const EdgeInsets.only(
                              left: 20.0,
                              right: 20,
                              top: 10,
                            ),
                            child: Text(
                              "0",
                              style: countHeading(),
                            ),
                          ));
                },
              ),
              // SizedBox(width: ,),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
              child: TotalOrderList(
            user: widget.user,
          ))
        ],
      ),
    );
  }
}
