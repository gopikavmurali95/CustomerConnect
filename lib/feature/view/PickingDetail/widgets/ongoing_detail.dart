import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/fonts.dart';
import '../../../state/bloc/picking_detail/pickingdetail_bloc.dart';

class OngoingDetail extends StatelessWidget {
  const OngoingDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickingdetailBloc, PickingdetailState>(
      builder: (context, state) {
        return state.when(
          pickingSuccessState: (pdetailList) => pdetailList == null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
              : pdetailList.isEmpty
                  ? const Center(
                      child: Text('No Data Found'),
                    )
                  : ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: pdetailList.length,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 4,
                                    fit: FlexFit.tight,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(pdetailList[index].prdCode ?? '',
                                            style: loadTextStyle()),
                                        Text(
                                          pdetailList[index].prdName ?? '',
                                          style: subTitleTextStyle(),
                                        ),
                                        Text(
                                          pdetailList[index].prdDescription ??
                                              '',
                                          style: subTitleTextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    /* child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Visibility(
                                          visible:
                                              pdetailList[index].pkdHigherUom ==
                                                          null ||
                                                      pdetailList[index]
                                                          .pkdHigherUom!
                                                          .isEmpty
                                                  ? false
                                                  : true,
                                          child: Text(
                                            pdetailList[index].pkdHigherUom ??
                                                '',
                                            style: subTitleTextStyle(),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Visibility(
                                          visible:
                                              pdetailList[index].pkdLowerUom ==
                                                          null ||
                                                      pdetailList[index]
                                                          .pkdLowerUom!
                                                          .isEmpty
                                                  ? false
                                                  : true,
                                          child: Text(
                                            pdetailList[index].pkdLowerUom!,
                                            style: subTitleTextStyle(),
                                          ),
                                        ),
                                      ],
                                    ), */
                                    child: Text(
                                      'CTN',
                                      //'pdetailList[index].pkdLowerUom!',
                                      style: subTitleTextStyle(),
                                    ),
                                  ),

                                  Flexible(
                                    flex: 0,
                                    fit: FlexFit.tight,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          pdetailList[index].pkdPickedHQty!,
                                          style: subTitleTextStyle(),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          pdetailList[index].pkdPickedLQty!,
                                          style: subTitleTextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  //  SizedBox(width: 0,)
                                ],
                              ),
                            ),
                            //  Divider(),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 0, right: 0),
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
