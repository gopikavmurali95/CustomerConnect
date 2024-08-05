import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MerchandiseDisputeNoteRequestScreen extends StatefulWidget {
  const MerchandiseDisputeNoteRequestScreen({
    super.key,
  });

  @override
  State<MerchandiseDisputeNoteRequestScreen> createState() =>
      _CreditNoteHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterFieldscreditNote = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Action taken", mode: 'AT'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
];
TextEditingController _creditNoteHSearch = TextEditingController();
Timer? debounce;
String _selectedMode = 'P';

class _CreditNoteHeaderScreenState
    extends State<MerchandiseDisputeNoteRequestScreen> {
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
            "Dispute note Requests",
            style: appHeading(),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              child: TextFormField(
                controller: _creditNoteHSearch,
                style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
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
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width - 20,
              child: DropdownButtonFormField(
                elevation: 0,
                value: ddfilterFieldscreditNote[0].mode,
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
                items: ddfilterFieldscreditNote
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pending",
                  style: countHeading(),
                ),
                Text(
                  "6",
                  style: countHeading(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: ListView.separated(
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) =>
                            //         CreditNoteDetailScreen(
                            //       creditNote: headers[index],
                            //       user: widget.user,
                            //       currentMode: _selectedMode,
                            //     ),
                            //   ),
                            // );
                          },
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: const Color(0xfffee8e0),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "DSP-REQ-MER-01",
                                            style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff2C6B9E),
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "RTL3714-",
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  "Al Dhafra Co-Cp Society Bainoona",
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff413434)),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "25-Jul-2024",
                                            style: kfontstyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffe3f7e2),
                                        // color: headers[index]
                                        //             .status!
                                        //             .isEmpty ||
                                        //         headers[index]
                                        //                 .status !=
                                        //             'Action Taken'
                                        //     ? headers[index]
                                        //                 .status ==
                                        //             'Rejected'
                                        //         ? Colors.red[300]
                                        //         : const Color(
                                        //             0xfff7f4e2)
                                        //     : const Color(
                                        //         0xffe3f7e2),
                                        borderRadius: BorderRadius.circular(
                                          20,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 5),
                                        child: Text(
                                          "Pending",
                                          style: kfontstyle(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54
                                              // color: headers[index]
                                              //             .status ==
                                              //         'Rejected'
                                              //     ? Colors.white54
                                              //     : Colors.black54
                                              ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                    itemCount: 10)),
          ),
        ]));
  }
}
