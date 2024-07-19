import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/voidtransaction/widgets/headerlistwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class VoidTranscactioHeaderScreen extends StatefulWidget {
  const VoidTranscactioHeaderScreen({super.key});

  @override
  State<VoidTranscactioHeaderScreen> createState() =>
      _VoidTranscactioHeaderScreenState();
}

class _VoidTranscactioHeaderScreenState
    extends State<VoidTranscactioHeaderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text(
          "Void Transaction Approval",
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
      body: SafeArea(
          child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
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
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonFormField(
                  elevation: 0,
                  dropdownColor: Colors.white,
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    hintText: "All Transactions",
                    hintStyle:
                        kfontstyle(fontSize: 10.sp, color: Colors.black87),
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
                  items: <String>['All Transactions', 'Option 2', 'Option 3']
                      .map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pending Approvals',
                    style: countHeading(),
                  ),
                  Text(
                    '11',
                    style: countHeading(),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              const Expanded(child: VoidTransactionHeaderListWidget())
            ],
          ),
        ),
      )),
      bottomNavigationBar: Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          //borderRadius: BorderRadius.circular(6.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              blurRadius: 1,
              offset: const Offset(0, 0),
              blurStyle: BlurStyle.normal,
              spreadRadius: 0.2,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.red.shade300,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Reject Selected',
                    style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.green.shade300,
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Approve Selected',
                    style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
