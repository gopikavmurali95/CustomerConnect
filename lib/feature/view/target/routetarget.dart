import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/target/targetpackage.dart';
import 'package:customer_connect/feature/view/target/widgets/routetargetdays.dart';
import 'package:customer_connect/feature/view/target/widgets/routetargetgraph.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RouteTargetWidget extends StatelessWidget {
  const RouteTargetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Route Target",
          style: appHeading(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const RouteTargetDaysWidget(),
            SizedBox(
              height: 10.h,
            ),
            const RouteTargetGraphWidget(),
            SizedBox(
              height: 10.h,
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
                    hintText: 'Search packages..',
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
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Package Wise Target',
                    style: countHeading(),
                  ),
                  Text(
                    '12',
                    style: countHeading(),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) =>
                                  const TargetPackageScreen()));
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 40.h,
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
                                        Text('Package 01',
                                            style: blueTextStyle()),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                overflow: TextOverflow.ellipsis,
                                                'Target Amount : 20,000.00',
                                                style: kfontstyle(
                                                    fontSize: 11,
                                                    color: const Color(
                                                        0xff413434))),
                                            Text(
                                                overflow: TextOverflow.ellipsis,
                                                'Target Quantity : 1000.00',
                                                style: kfontstyle(
                                                    fontSize: 11,
                                                    color: const Color(
                                                        0xff413434))),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                overflow: TextOverflow.ellipsis,
                                                'Achieved Amount : 20,000.00',
                                                style: kfontstyle(
                                                    fontSize: 11,
                                                    color: const Color(
                                                        0xff413434))),
                                            Text(
                                                overflow: TextOverflow.ellipsis,
                                                'Achieved Quantity : 1000.00',
                                                style: kfontstyle(
                                                    fontSize: 11,
                                                    color: const Color(
                                                        0xff413434))),
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
