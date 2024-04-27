import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/price_change_reason_model/price_change_reason_model.dart';
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceChangeDetail extends StatefulWidget {
  const PriceChangeDetail({super.key});

  @override
  State<PriceChangeDetail> createState() => _PriceChangeDetailState();
}

List<PriceChangeReasonModel> selectedresons = [];
List<bool> statuslist = [];

List<PriceChangeReasonModel> availableresons = [];

class _PriceChangeDetailState extends State<PriceChangeDetail> {
  @override
  void initState() {
    context
        .read<PriceChangeDetailsBloc>()
        .add(const GetPriceChangeDetailsEvent(pchID: '44'));
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
          "Price Change Detail",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Text(
                    'Item',
                    style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black54),
                  ),
                  SizedBox(
                    width: 200.w,
                  ),
                  Row(
                    children: [
                      Text(
                        'UOM',
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        width: 40.w,
                      ),
                      Text(
                        'Qty',
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          BlocBuilder<PriceChangeDetailsBloc, PriceChangeDetailsState>(
            builder: (context, state) {
              return state.when(
                getPRiceChangeDetails: (pdet) => pdet == null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => ShimmerContainers(
                                height: 60.h, width: double.infinity),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: 10),
                      )
                    : Expanded(
                        child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(left: 20, right: 25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          pdet[index].prdCode ?? '',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff7b70ac),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          pdet[index].prdName ?? '',
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 145.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        pdet[index].pcdHigherUom ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      ),
                                      Text(
                                        pdet[index].pcdLowerUom ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        pdet[index].pcdHigherQty ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      ),
                                      Text(
                                        pdet[index].pcdLowerQty ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black54),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                        itemCount: pdet.length,
                      )),
                priceChangedetailsFailed: () => Center(
                  child: Text(
                    'No Data Available',
                    style: kfontstyle(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

const ddvalues = [
  DropdownMenuItem(
    value: '0',
    child: Text('Select Reason'),
  ),
  DropdownMenuItem(
    value: '1',
    child: Text('reason1'),
  ),
  DropdownMenuItem(
    value: '2',
    child: Text('reason2'),
  )
];
