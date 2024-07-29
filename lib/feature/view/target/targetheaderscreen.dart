import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/target/widgets/lineartargetchart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class TargetHeaderScreen extends StatefulWidget {
  const TargetHeaderScreen({super.key});

  @override
  State<TargetHeaderScreen> createState() => _TargetHeaderScreenState();
}

class _TargetHeaderScreenState extends State<TargetHeaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Target",
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
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width / 3,
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: MediaQuery.of(context).size.width / 2.8,
                            width: MediaQuery.of(context).size.width - 80,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xffe9f2f6),
                                  Color(0xffdcdef7),
                                ],
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Target Amount',
                                        style: countHeading(),
                                      )
                                    ],
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: AnimatedLinearProgressChart(
                                        targetAmount: 10000,
                                        achievedAmount: 400,
                                        colors: [
                                          Color(0xffbec6ee),
                                          Color(0xff535bcd)
                                        ],
                                        subColor: Color(0xff535bcd),
                                        duration: Duration(milliseconds: 500),
                                        title: ''),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: AnimatedLinearProgressChart(
                                        targetAmount: 10000,
                                        achievedAmount: 1000,
                                        colors: [
                                          Color(0xffc5c7e9),
                                          Color(0xff9599dd)
                                        ],
                                        subColor: Color(0xff9599dd),
                                        duration: Duration(milliseconds: 500),
                                        title: ''),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
