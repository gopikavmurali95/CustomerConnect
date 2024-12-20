import 'dart:io';

import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart';
import 'package:customer_connect/feature/view/PickingDetail/picking_ongoing.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/fonts.dart';
import '../../../state/bloc/picking_detail/pickingdetail_bloc.dart';

class OnGoing extends StatelessWidget {
  const OnGoing({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickingHeaderBloc, PickingHeaderState>(
      builder: (context, state) {
        return state.when(
          getPickingHeaderState: (pickingOut) => pickingOut == null
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
              : pickingOut.isEmpty
                  ? Center(
                      child: Text(
                        'No Data Found',
                        style: kfontstyle(),
                      ),
                    )
                  : ListView.builder(
                      padding: const EdgeInsets.only(
                        top: 10,
                        //  bottom: 10
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: pickingOut.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            SizedBox(
                              height: 50,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ListTile(
                                  onTap: () {
                                    context
                                        .read<PickingdetailBloc>()
                                        .add(const ClearPickingDetailevent());
                                    context.read<PickingdetailBloc>().add(
                                        PickingDetailSuccess(
                                            pickingID:
                                                pickingOut[index].pickingID!,
                                            searchQuery: ''));
                                    Navigator.push(
                                      context,
                                      Platform.isIOS
                                          ? CupertinoPageRoute(
                                              builder: (context) =>
                                                  PickingOgoing(
                                                      picking:
                                                          pickingOut[index]))
                                          : MaterialPageRoute(
                                              builder: (context) =>
                                                  PickingOgoing(
                                                picking: pickingOut[index],
                                              ),
                                            ),
                                    );
                                  },
                                  contentPadding: EdgeInsets.zero,
                                  //titleAlignment: ListTileTitleAlignment.center,
                                  //minVerticalPadding:5,
                                  //minLeadingWidth: 50,
                                  //titleAlignment:ListTileTitleAlignment.center,
                                  horizontalTitleGap: 10,
                                  leading: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: const Color(0xffBEC363),
                                      child: Image.asset(
                                        "assets/images/listicon.png",
                                        height: 20,
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    "${pickingOut[index].pickingNumber}",
                                    style: blueTextStyle(),
                                  ),
                                  subtitle: Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 10.0),
                                    child: RichText(
                                        text: TextSpan(
                                            text:
                                                "${pickingOut[index].rotCode} | ",
                                            style: subTitleTextStyle(),
                                            children: [
                                          TextSpan(
                                              text:
                                                  "${pickingOut[index].date} | ",
                                              style: subTitleTextStyle()),
                                          TextSpan(
                                              text: "${pickingOut[index].time}",
                                              style: subTitleTextStyle())
                                        ])),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 05
                                  // top: 10,bottom: 10
                                  ),
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            )
                          ],
                        );
                      },
                    ),
          pickingheaderFailedState: () => SizedBox(
            height: MediaQuery.of(context).size.height / 1.5,
            child: const Center(
              child: Text("No Data Available"),
            ),
          ),
        );
      },
    );
  }
}
