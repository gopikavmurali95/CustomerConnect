import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/bloc/cus_items_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerItemListWidget extends StatelessWidget {
  const CustomerItemListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CusItemsBloc, CusItemsState>(
      builder: (context, state) {
        return state.when(
          getCusItemsState: (items) => items == null
              ? const Center(
                  child: CupertinoActivityIndicator(
                    animating: true,
                    color: Colors.red,
                    radius: 30,
                  ),
                )
              : ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[index].prdCode ?? '',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff7b70ac),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                items[index].prdName ?? '',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  items[index].uomName ?? '',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ),
                                /* SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  'Pc',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ), */
                              ],
                            ),
                            SizedBox(
                              width: 50.w,
                            ),
                            Column(
                              children: [
                                Text(
                                  items[index].pldPrice ?? "",
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ),
                                /* SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  '12.00',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ), */
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.grey[300],
                  ),
                  itemCount: 20,
                ),
          getitemsFailedState: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
