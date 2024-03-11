import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/load/widgets/CompletedList.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoadCompleted extends StatefulWidget {

  const LoadCompleted({super.key});

  @override
  State<LoadCompleted> createState() => _LoadCompletedState();
}

class _LoadCompletedState extends State<LoadCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: const Icon(Icons.arrow_back_ios_rounded,size: 20,),
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text("Load In Completed",style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset("assets/svg/filter.svg",height: 20,fit: BoxFit.scaleDown,),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: Container(
                height: 40,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(color: Colors.grey,
                          blurRadius: 0.4,
                          spreadRadius: 0.2)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search,size: 20,),
                      hintText: "Search deliveries",
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
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //SizedBox(width: 05,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
                  child: Text("Completed",style: countHeading(),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
                  child: Text("10",style: countHeading(),),
                ),
                // SizedBox(width: ,),
              ],
            ),
            ListWidget(),
          ],
        ),
      ),
    );
  }
}
