// ignore_for_file: file_names
import 'package:customer_connect/feature/view/load/load_completed.dart';
import 'package:customer_connect/feature/view/load/load_pending.dart';
import 'package:customer_connect/feature/view/load/load_rejected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';
import '../../PickingHeader/pick_completed.dart';
import '../../PickingHeader/pick_ongoing.dart';
import '../../PickingHeader/pick_not_started_header.dart';

class PickingWidget extends StatelessWidget {
  const PickingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height / 3.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffB3DAF7), Color(0xffD9EDFB)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Picking", style: boxHeading()),
                    Text(
                      "33",
                      style: countHeading(),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0, top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const PickHeaderNotStarted(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 70,
                          width: 110.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10", style: countHeading()),
                                Text("(6 Routes)", style: subTextStyle()),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/pending.svg",
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    //Icon(Icons.note_add_outlined,size: 12,),
                                    Text("Not Started",
                                        style: statusTextStyle()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PickHeaderOngoing(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10", style: countHeading()),
                                Text("(6 Routes)", style: subTextStyle()),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/ongoing.svg",
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    Text("Ongoing", style: statusTextStyle()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PickHeaderCompleted(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10", style: countHeading()),
                                Text("(8 Routes)", style: subTextStyle()),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/completed.svg",
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    //Icon(Icons.note_add_outlined,size: 12,),
                                    Text("Completed", style: statusTextStyle()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Loading",
                      style: boxHeading(),
                    ),
                    Text(
                      "35",
                      style: countHeading(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 0, top: 3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoadPending(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("15", style: countHeading()),
                                Text("(6 Routes)", style: subTextStyle()),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/pending.svg",
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    //Icon(Icons.note_add_outlined,size: 12,),
                                    Text("Pending", style: statusTextStyle()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoadCompleted(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10", style: countHeading()),
                                Text("(6 Routes)", style: subTextStyle()),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/completed.svg",
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    //Icon(Icons.note_add_outlined,size: 12,),
                                    Text("Completed", style: statusTextStyle()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Flexible(
                      flex: 3,
                      fit: FlexFit.tight,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoadRejected(),
                            ),
                          );
                        },
                        child: Container(
                          // height: 70,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10", style: countHeading()),
                                Text("(6 Routes)", style: subTextStyle()),
                                SizedBox(
                                  height: 2.h,
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/rejected.svg",
                                      height: 8.h,
                                    ),
                                    SizedBox(
                                      width: 8.w,
                                    ),
                                    //Icon(Icons.note_add_outlined,size: 12,),
                                    Text("Rejected", style: statusTextStyle()),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
