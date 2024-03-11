import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/fonts.dart';
class CustomerTransaction extends StatelessWidget {
  const CustomerTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 120,
          // height: MediaQuery.of(context).size.height/5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffC6E1E5),
                  Color(0xffE6F4F6)
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
                    Text("Customer Transactions",style: boxHeading(),),
                    // Text("33"),
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
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,top: 5,bottom: 5),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svg/inv.svg",height: 18,),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10",style:  countHeading()),
                                Text("AED 0.00",style: subTextStyle()),
                                Text("Invoices",style: statusTextStyle(),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,top: 5,bottom: 5),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svg/ar.svg",height: 18,),
                              ],
                            ),
                            const SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("10",style: countHeading()),
                                Text("AED 0.00",style: subTextStyle()),
                                Text("Ar Collection ",style: statusTextStyle(),)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),


            ],
          )
      ),
    );
  }
}
