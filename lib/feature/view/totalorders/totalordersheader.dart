import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/view/totalorders/widgets/totalorderslist.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
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

class _TotalOrdersState extends State<TotalOrders> {
  @override
  void initState() {
    context.read<TotalOrdersHeaderBloc>().add(GetTotalOrdersEvent(
        ordersin: TotalOrdersInparas(
            area: '',
            customer: '',
            fromDate: '01/01/2023',
            outlet: '',
            route: '',
            subArea: '',
            toDate: '30/03/2024',
            userId: widget.user.usrId)));
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
      body: BlocBuilder<TotalOrdersHeaderBloc, TotalOrdersHeaderState>(
        builder: (context, state) {
          return state.when(
            getTotalOrderState: (totalorders) => totalorders == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)
                : Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
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
                            child: TextField(
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
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 10),
                            child: Text(
                              "All ",
                              style: countHeading(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 20, top: 10),
                            child: Text(
                              totalorders.length.toString(),
                              style: countHeading(),
                            ),
                          ),
                          // SizedBox(width: ,),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Expanded(child: TotalOrderList())
                    ],
                  ),
            totalOrdersFailedState: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
