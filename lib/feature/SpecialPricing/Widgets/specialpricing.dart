import 'package:flutter/material.dart';

import '../../../constants/fonts.dart';

class SpecialPricing extends StatefulWidget {
  const SpecialPricing({super.key});

  @override
  State<SpecialPricing> createState() => _SpecialPricingState();
}

class _SpecialPricingState extends State<SpecialPricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.2,
        leading: const Icon(Icons.arrow_back_ios_rounded,size: 20,),
        title: Text("Special Pricing",style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left:20,bottom:5.0,right: 10),
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xffA4C8E9),
                      child: Text("RG",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                               "Special Pricing 0${1}",
                               style: blueTextStyle(),
                             ),
                      Text("21 Feb 2021 to 24 Feb 2024 ",style:subTitleTextStyle(),),
                      Text("PR12001",style: subTitleTextStyle(),)
                    ],
                  ),
                  const SizedBox(width: 70,),
                  const Row(
                    children: [
                      Text("Customer",style: TextStyle(fontSize: 12),),
                      Icon(Icons.keyboard_arrow_right),
                    ],
                  )
                ],
              ),
              // Container(
              //   padding: EdgeInsets.only(bottom: 10),
              //   height: 60,
              //   color: Colors.white,
              //   child: ListTile(
              //     onTap: () {
              //       // Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(
              //       //     builder: (context) => const LoadDetailPending(),
              //       //   ),
              //       // );
              //     },
              //     titleAlignment: ListTileTitleAlignment.center,
              //     minVerticalPadding:5,
              //     minLeadingWidth: 50,
              //     //titleAlignment:ListTileTitleAlignment.center,
              //     horizontalTitleGap: 10,
              //     leading: Padding(
              //       padding: const EdgeInsets.only(bottom:5.0,),
              //       child: CircleAvatar(
              //         radius: 30,
              //         backgroundColor: const Color(0xffA4C8E9),
              //         child: Image.asset(
              //           "assets/images/listicon.png",
              //           height: 20,
              //         ),
              //       ),
              //     ),
              //     title: Text(
              //       "Special Pricing 0${1}",
              //       style: blueTextStyle(),
              //     ),
              //     subtitle: Padding(
              //         padding: const EdgeInsets.only(bottom: 10.0,),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Text("21 Feb 2021 to 24 Feb 2024 ",style:subTitleTextStyle(),),
              //             Text("PR12001",style: subTitleTextStyle(),)
              //           ],
              //         )
              //     ),
              //     trailing: Text("Customers >",style: TextStyle(
              //         fontSize: 10,color: Colors.grey
              //     ),),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top:10,left: 15.0,right: 15,bottom: 10),
                child: Container(
                    height: 40,
                    decoration:  BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(color: Color(0xff00000050),
                              blurRadius: 0.4,
                              spreadRadius: 0.4)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search,size: 20,),
                          hintText: "Search Items",
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius:
                              BorderRadius.circular(10.0),
                              borderSide: BorderSide.none
                          )),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:40,right: 110),
                    child: Text("Items",style: boxHeading(),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("UOM",style: boxHeading(),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Sys Qty",style: boxHeading(),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text("Pkd Qty",style: boxHeading(),),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            ListView.separated(
              itemCount: 4,
              shrinkWrap: true,
              itemBuilder:(BuildContext context,int index)
              {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,top:2),
                          child: Container(
                            height: 55,
                            width: 200,
                            color: Colors.white,
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("400478754",style: loadTextStyle()),
                                Text("How are you Pasta 500g",style: subTitleTextStyle(),),
                                Text("Offer Pack",style: subTitleTextStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cs",style: subTitleTextStyle(),),
                            const SizedBox(height: 5,),
                            Text("Cs",style: subTitleTextStyle(),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 2.0),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("2.50",style: subTitleTextStyle(),),
                              const SizedBox(height: 5,),
                              Text("12.00",style: subTitleTextStyle(),),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5,right: 20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("10.00",style: subTitleTextStyle(),),
                              const SizedBox(height: 5,),
                              Text("10.45",style: subTitleTextStyle(),),
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
              separatorBuilder: (BuildContext context, int index)
              {
                return const Padding(
                  padding: EdgeInsets.only(left: 15.0,right: 10),
                  child: Divider(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
