import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/customerinsightspecialpricing.dart';
import 'package:customer_connect/feature/view/customeritemlist/customeritemlist.dart';
import 'package:customer_connect/feature/view/documents/customerdocumentscreen.dart';
import 'package:customer_connect/feature/view/geolocation/geolocationscreen.dart';
import 'package:customer_connect/feature/view/outstanding/insigtsoutstanding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../custinsightpromotion/custinsightpromotion.dart';

class OtherOptionsWidget extends StatelessWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const OtherOptionsWidget(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InsghtsOutStandingScreen(
                        customer: customer,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                        user: user,
                      ),
                    ),
                  );
                },
                child: const OtherOptionsTilesWideget(
                  imgpath: 'assets/images/outs.png',
                  title: 'Outstanding',
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerInsightSpecialPricing(
                          //isfromUser: false,
                          ),
                    ),
                  );
                },
                child: const OtherOptionsTilesWideget(
                  imgpath: 'assets/images/spec.png',
                  title: 'Special pricing',
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerInsightPromotion(
                          // isfromUser: false,
                          ),
                    ),
                  );
                },
                child: const OtherOptionsTilesWideget(
                  imgpath: 'assets/images/promo.png',
                  title: 'Promotions',
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerItemList(
                        customer: customer,
                        user: user,
                      ),
                    ),
                  );
                },
                child: const OtherOptionsTilesWideget(
                  imgpath: 'assets/images/itemlist.png',
                  title: 'Customer Item list',
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerDocumentScreen(
                        customer: customer,
                        user: user,
                      ),
                    ),
                  );
                },
                child: const OtherOptionsTilesWideget(
                  imgpath: 'assets/images/document.png',
                  title: 'Documents',
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const GeoLocationScreen(),
                    ),
                  );
                },
                child: const OtherOptionsTilesWideget(
                  imgpath: 'assets/images/location.png',
                  title: 'Geolocation',
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}

class OtherOptionsTilesWideget extends StatelessWidget {
  final String title;
  final String imgpath;
  const OtherOptionsTilesWideget({
    super.key,
    required this.title,
    required this.imgpath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100,
                offset: const Offset(0, 0),
                blurRadius: 2,
                spreadRadius: 2)
          ],
        ),
        // height: 38.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
          child: Row(
            children: [
              Image.asset(
                imgpath,
                height: 16.h,
              ),
              SizedBox(
                width: 10.sp,
              ),
              Text(
                title,
                style: kfontstyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
