import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/target/widgets/targetpackagelist.dart';
import 'package:customer_connect/feature/view/target/widgets/targetpackagetiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TargetPackageScreen extends StatelessWidget {
  const TargetPackageScreen({super.key});

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
          "Target Package",
          style: appHeading(),
        ),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Package 01',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  const TargetPAckageContainerWidget(),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 30.h,
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      // controller: mustSellHeaderSearchCtrl,
                      style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Search items..',
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
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
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
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Items',
                        style: countHeading(),
                      ),
                      Text(
                        '12',
                        style: countHeading(),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
            Container(
              height: 30.h,
              width: double.infinity,
              color: const Color(0xfff5f5f5),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    Flexible(
                        flex: 3,
                        fit: FlexFit.tight,
                        child: Text('Item',
                            style: kfontstyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black54))),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Text('Achvd Amt',
                          style: kfontstyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                    ),
                    Flexible(
                      flex: 0,
                      fit: FlexFit.tight,
                      child: Text('Achvd Qty',
                          style: kfontstyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.black54)),
                    )
                  ],
                ),
              ),
            ),
            const Expanded(child: TargetPackageListItems())
          ],
        ),
      ),
    );
  }
}
