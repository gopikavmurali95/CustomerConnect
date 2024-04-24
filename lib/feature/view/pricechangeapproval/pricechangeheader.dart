import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceChangeApproval extends StatelessWidget {
  const PriceChangeApproval({super.key});

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
          "Price Change  ",
          style: appHeading(),
        ),
      ),
      body: BlocBuilder<PriceChangeHeaderBloc, PriceChangeHeaderState>(
        builder: (context, state) {
          return state.when(
              getPriceChangeState: (pChange) => pChange == null
                  ? const SizedBox()
                  : Column(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.separated(
                              itemBuilder: (context, index) => Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor:
                                            const Color(0xffDB95B5),
                                        child: Image.asset(
                                          'assets/images/ar_li.png',
                                          height: 20.h,
                                          width: 20.w,
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
                                              'ReqId-12345',
                                              style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff2C6B9E),
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Cuscode-123456 - ',
                                                  style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    "CusName",
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff413434)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              overflow: TextOverflow.ellipsis,
                                              "transaction type",
                                              style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  color:
                                                      const Color(0xff413434)),
                                            ),
                                            Text(
                                              '23-04-2024 | 2:35',
                                              style: kfontstyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: 10),
                        ))
                      ],
                    ),
              priceChangeFailureState: () => Center(
                    child: Text(
                      'No Data Available',
                      style: kfontstyle(),
                    ),
                  ));
        },
      ),
    );
  }
}
