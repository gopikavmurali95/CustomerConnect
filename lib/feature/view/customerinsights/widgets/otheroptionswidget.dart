import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherOptionsWidget extends StatelessWidget {
  const OtherOptionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OtherOptionsTilesWideget(
                imgpath: 'assets/images/outs.png',
                title: 'Outstanding',
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OtherOptionsTilesWideget(
                imgpath: 'assets/images/spec.png',
                title: 'Special pricing',
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OtherOptionsTilesWideget(
                imgpath: 'assets/images/promo.png',
                title: 'Promotions',
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OtherOptionsTilesWideget(
                imgpath: 'assets/images/itemlist.png',
                title: 'Customer Item list',
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OtherOptionsTilesWideget(
                imgpath: 'assets/images/document.png',
                title: 'Documents',
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: OtherOptionsTilesWideget(
                imgpath: 'assets/images/location.png',
                title: 'Geolocation',
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
    return Card(
      surfaceTintColor: Colors.white,
      color: Colors.white,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 50.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Image.asset(
                imgpath,
                height: 20.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title,
                style: kfontstyle(
                  fontSize: 11.sp,
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
