import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';

class PickingWidget extends StatelessWidget {
  const PickingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height/3.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffB3DAF7),
                  Color(0xffD9EDFB)
                ],
              )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Picking",style: boxHeading()),
                    Text("33",style:  countHeading(),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 05.0,right: 05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 102,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 3,bottom: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10",style: countHeading()),
                            Text("(6 Routes)",style: subTextStyle()),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/pending.svg"),
                                const SizedBox(width: 2,),
                                //Icon(Icons.note_add_outlined,size: 12,),
                                Text("Not Started",style: statusTextStyle()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 102,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 3,bottom: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10",style: countHeading()),
                            Text("(6 Routes)",style: subTextStyle()),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/ongoing.svg"),
                                Text("Pending",style: statusTextStyle()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 102,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 3,bottom: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10",style:  countHeading()),
                            Text("(8 Routes)",style: subTextStyle()),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/completed.svg"),
                                const SizedBox(width: 2,),
                                //Icon(Icons.note_add_outlined,size: 12,),
                                Text("Completed",style: statusTextStyle()),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Loading",style: boxHeading(),),
                    Text("35",style:  countHeading(),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 05.0,right: 05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 60,
                      width: 102,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 3,bottom: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("15",style:  countHeading()),
                            Text("(6 Routes)",style: subTextStyle()),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/pending.svg"),
                                const SizedBox(width: 2,),
                                //Icon(Icons.note_add_outlined,size: 12,),
                                Text("Pending",style: statusTextStyle()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 102,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 3,bottom: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10",style:  countHeading()),
                            Text("(6 Routes)",style: subTextStyle()),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/completed.svg"),
                                const SizedBox(width: 2,),
                                //Icon(Icons.note_add_outlined,size: 12,),
                                Text("Completed",style: statusTextStyle()),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 102,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0,top: 3,bottom: 3),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("10",style:  countHeading()),
                            Text("(6 Routes)",style: subTextStyle()),
                            Row(
                              children: [
                                SvgPicture.asset("assets/svg/rejected.svg"),
                                const SizedBox(width: 2,),
                                //Icon(Icons.note_add_outlined,size: 12,),
                                Text("Completed",style: statusTextStyle()),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),],
          )
      ),
    );
  }
}
