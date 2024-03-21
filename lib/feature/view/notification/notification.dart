import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
          "Notifications ",
          style: appHeading(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
            width: double.infinity,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 1,
                  offset: const Offset(0, 0),
                  blurStyle: BlurStyle.normal,
                  spreadRadius: 0.4,
                ),
              ],
            ),
            // child: const ExpansionTile(
            //   title: Text('18 Mar 24   12.02'),
            //   subtitle: Text('Check the daily load'),
            //   children: [Text('abc')],
            // ),
            child: Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text(
                  '18 Mar 24   12.02',
                  style:
                      kfontstyle(fontSize: 11.sp, fontWeight: FontWeight.w300),
                ),
                subtitle: Text(
                  'Check the Daily-load',
                  style:
                      kfontstyle(fontSize: 13.sp, fontWeight: FontWeight.w400),
                ),
                trailing: const SizedBox(),
                // trailing:
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Load In',
                          style: kfontstyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade200),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 0.4,
                                            spreadRadius: 0.2)
                                      ]),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        hintText: "Type your reply...",
                                        hintStyle: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal),
                                        isDense: true,
                                        counterText: "",
                                        contentPadding:
                                            const EdgeInsets.all(15.0),
                                        filled: true,
                                        fillColor: Colors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide.none)),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    maxLength: 20,
                                    // controller: _locationNameTextController,
                                  )),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Image.asset(
                              "assets/images/send.png",
                              height: 35.h,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 5.h,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 8.h,
          ),
          itemCount: 3,
        ),
      ),
    );
  }
}
