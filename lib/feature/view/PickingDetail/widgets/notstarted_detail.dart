import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/fonts.dart';
import '../../../state/bloc/picking_detail/pickingdetail_bloc.dart';

class NotStartedDetail extends StatelessWidget {
  const NotStartedDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickingdetailBloc, PickingdetailState>(
      builder: (context, state) {
        return state.when(
          pickingSuccessState: (pdetailList) => pdetailList == null
              ? SizedBox(
                  height: 400.h,
                  child: const Center(
                    child: CupertinoActivityIndicator(
                      animating: true,
                      color: Colors.red,
                      radius: 30,
                    ),
                  ),
                )
              : ListView.separated(
                  itemCount: pdetailList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 2),
                              child: Container(
                                height: 70,
                                width: 200,
                                color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${pdetailList[index].prdCode}",
                                        style: loadTextStyle()),
                                    Text(
                                      "${pdetailList[index].prdName}",
                                      style: subTitleTextStyle(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${pdetailList[index].pkdPickedHQty}",
                                  style: subTitleTextStyle(),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${pdetailList[index].pkdPickedLQty}",
                                  style: subTitleTextStyle(),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 5, right: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "${pdetailList[index].pkdPkhID}",
                                    style: subTitleTextStyle(),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "${pdetailList[index].pkdPickedLQty}",
                                    style: subTitleTextStyle(),
                                  ),
                                ],
                              ),
                            ),
                            //  SizedBox(width: 0,)
                          ],
                        ),
                        //  Divider(),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Padding(
                      padding: EdgeInsets.only(left: 0.0, right: 0),
                      child: Divider(),
                    );
                  },
                ),
          pickingFailedState: () => Center(
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
