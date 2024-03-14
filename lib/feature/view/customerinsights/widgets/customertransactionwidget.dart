import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomerTraansactionWidget extends StatelessWidget {
  const CustomerTraansactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        // height: MediaQuery.of(context).size.height / 3.8,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              Color(0xffdeecfb),
              Color(0xfff0e0fc),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Customer Transactions',
                    style: kfontstyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Text(
                              'From ',
                              style: kfontstyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '|',
                              style: kfontstyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              '2 may 2023',
                              style: kfontstyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/svg/calendar.svg',
                                height: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: Container(
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(
                          children: [
                            Text(
                              'To  ',
                              style: kfontstyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '| ',
                              style: kfontstyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[300],
                              ),
                            ),
                            Text(
                              '2 may 2023',
                              style: kfontstyle(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                'assets/svg/calendar.svg',
                                height: 15.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  const Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: CusTransNavWIdget(
                      title: 'Invoices',
                      imagepath: 'assets/images/invoice.png',
                      count: '4',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: CusTransNavWIdget(
                      title: 'AR Collections',
                      imagepath: 'assets/images/ar.png',
                      count: '6',
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  const Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: CusTransNavWIdget(
                      title: 'Sales Orders',
                      imagepath: 'assets/images/order.png',
                      count: '4',
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const Flexible(
                    flex: 2,
                    fit: FlexFit.tight,
                    child: CusTransNavWIdget(
                      title: 'Service Jobs',
                      imagepath: 'assets/images/sj.png',
                      count: '6',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CusTransNavWIdget extends StatelessWidget {
  final String title;
  final String imagepath;
  final String count;
  const CusTransNavWIdget({
    super.key,
    required this.title,
    required this.imagepath,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  imagepath,
                  height: 22.h,
                ),
                SizedBox(
                  height: 8.h,
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
            Text(
              count,
              style: kfontstyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            )
          ],
        ),
      ),
    );
  }
}
