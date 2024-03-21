import 'package:customer_connect/constants/fonts.dart';

import 'package:customer_connect/feature/view/PickingHeader/widgets/completed.dart';
import 'package:customer_connect/feature/view/load/widgets/CompletedList.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PickHeaderCompleted extends StatefulWidget {
  const PickHeaderCompleted({super.key});

  @override
  State<PickHeaderCompleted> createState() => _PickHeaderCompletedState();
}

class _PickHeaderCompletedState extends State<PickHeaderCompleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded,),

        ),
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text(
          "Picking Completed",
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
            padding:
            const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
            child: Container(
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade200),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff00000050),
                          blurRadius: 0.4,
                          spreadRadius: 0.4)
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 20,
                      ),
                      hintText: "Search Deliveries",
                      hintStyle: const TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      isDense: true,
                      counterText: "",
                      contentPadding: const EdgeInsets.all(15.0),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none)),
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  maxLength: 20,
                  // controller: _locationNameTextController,
                )),
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
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  child: Text(
                    "Completed",
                    style: countHeading(),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                  child: Text(
                    "10",
                    style: countHeading(),
                  ),
                ),
                // SizedBox(width: ,),
              ],
            ),
            const Completed(),
          ],
        ),
      ),
    );
  }
}
