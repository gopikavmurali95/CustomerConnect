import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/target/routetarget.dart';
import 'package:customer_connect/feature/view/target/widgets/targetgraphwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TargetGraphWidget(),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  // controller: mustSellHeaderSearchCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search routes..',
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
              height: 10.sp,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Route Wise Targets",
                    style: countHeading(),
                  ),
                  Text(
                    '10',
                    style: countHeading(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => const RouteTargetWidget()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50.h,
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
                                          'TFDB08 - Route DB08',
                                          style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff2C6B9E),
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                'Target Amount : 20000.00',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                overflow: TextOverflow.ellipsis,
                                                'Target Quantity : 1000.00',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color: const Color(
                                                        0xff413434)),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey[300],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
