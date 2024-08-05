import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutActvitySurveyHeaderScreen extends StatefulWidget {
  const OutActvitySurveyHeaderScreen({
    super.key,
  });

  @override
  State<OutActvitySurveyHeaderScreen> createState() =>
      _PriceChangeHeaderState();
}

List<ApprovalStatusFilterModel> filterFieldsPriceChange = [
  ApprovalStatusFilterModel(statusName: "All Survey", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Completed", mode: 'AT'),
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'AT'),
];

Timer? debounce;
TextEditingController _priceChangeHeaderSearchCtrl = TextEditingController();

class _PriceChangeHeaderState extends State<OutActvitySurveyHeaderScreen> {
  @override
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
          "Survey",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: _priceChangeHeaderSearchCtrl,
                  style: kfontstyle(
                      fontSize: 12.sp, color: const Color(0xff413434)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search here..',
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.clear,
                                size: 10.sp,
                              )),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 14.sp,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: /* InputBorder
                              .none  */
                        OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonFormField(
                  elevation: 0,
                  value: filterFieldsPriceChange[0].mode,
                  dropdownColor: Colors.white,
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: /* InputBorder
                              .none  */
                        OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                  items: filterFieldsPriceChange
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {},
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "All Surveys",
                          // _selectedPriceChangeMode == 'P'
                          //     ? 'Pending Approvals'
                          //     : 'Approved Requests',
                          style: countHeading(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Text(
                            "13",
                            style: countHeading(),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.separated(
                        itemBuilder: (context, index) => GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfffee8e0),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("40047977 - Store Survey01",
                                            style: blueTextStyle()),
                                        Row(
                                          children: [
                                            Text(
                                              "201232-",
                                              style: kfontstyle(
                                                fontSize: 11.sp,
                                                color: const Color(0xff2C6B9E),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  "Emmerch International Hotel",
                                                  style: subTitleTextStyle()),
                                            ),
                                          ],
                                        ),
                                        // Text(
                                        //   overflow:
                                        //       TextOverflow
                                        //           .ellipsis,
                                        //  "",
                                        //   style: kfontstyle(
                                        //       fontSize: 12.sp,
                                        //       color: const Color(
                                        //           0xff413434)),
                                        // ),
                                        Text(
                                          "Due on: 01 Aug 2024 ",
                                          style: kfontstyle(
                                              fontSize: 9.sp,
                                              color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 10.h,
                                    // width: 10.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xfff7f4e2),
                                      // color: pChange[index]
                                      //             .pchApprovalStatus! ==
                                      //         "Pending"
                                      //     ? const Color(
                                      //         0xfff7f4e2)
                                      //     : pChange[index]
                                      //                 .pchApprovalStatus! ==
                                      //             "Action Taken"
                                      //         ? const Color(
                                      //             0xffe3f7e2)
                                      //         : Colors
                                      //             .red[300],
                                      borderRadius: BorderRadius.circular(
                                        10,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 3),
                                      child: Text(
                                        "Pending",
                                        style: kfontstyle(fontSize: 8.sp),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
