import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_in_paras/todays_delivery_in_paras.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/view/todaysdelivery/widgets/todaysdeliverylist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TodaysDelivery extends StatefulWidget {
  final LoginUserModel user;
  const TodaysDelivery({super.key, required this.user});

  @override
  State<TodaysDelivery> createState() => _TodaysDeliveryState();
}

final _todaysDeliverySearchCtrl = TextEditingController();
Timer? debounce;

class _TodaysDeliveryState extends State<TodaysDelivery> {
  @override
  void initState() {
    _todaysDeliverySearchCtrl.clear();
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
          "Todays Delivery ",
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
                  controller: _todaysDeliverySearchCtrl,
                  onChanged: (value) {
                    if (debounce?.isActive ?? false) debounce!.cancel();
                    debounce = Timer(
                      const Duration(
                        milliseconds: 500,
                      ),
                      () async {
                        context.read<TodaysDeliveryHeaderBloc>().add(
                            GetTodaysDeliveryEvent(
                                todaysdelivery: TodaysDeliveryInParas(
                                    area: '',
                                    customer: '',
                                    customerOutlet: '',
                                    fromDate: '01-01-2023',
                                    mode: '',
                                    route: '',
                                    subArea: '',
                                    toDate: '31-03-2024',
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
                      hintText: "Search deliveries ",
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
                          _todaysDeliverySearchCtrl.clear();
                          context.read<TodaysDeliveryHeaderBloc>().add(
                              GetTodaysDeliveryEvent(
                                  todaysdelivery: TodaysDeliveryInParas(
                                      area: '',
                                      customer: '',
                                      customerOutlet: '',
                                      fromDate: '01-01-2023',
                                      mode: '',
                                      route: '',
                                      subArea: '',
                                      toDate: '31-03-2024',
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
                  "Today's Deliveries ",
                  style: countHeading(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Text(
                  "20",
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
              child: TodaysDeliveryList(
            user: widget.user,
          ))
        ],
      ),
    );
  }
}
