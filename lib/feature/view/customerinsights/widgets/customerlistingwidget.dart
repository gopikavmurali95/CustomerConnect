import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/customerinsights/customerinsightsscree.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomersListingWidget extends StatelessWidget {
  const CustomersListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.separated(
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomerInsightsScreen(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 20,
                        backgroundColor: const Color(0xff95cbdb),
                        child: Center(
                          child: Text(
                            'A',
                            style: kfontstyle(
                              fontSize: 16.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'A025206 - ',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  'Tromp, Muller and Mitchell',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '199525 - ',
                                style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  'Carrefour Hypermarket',
                                  overflow: TextOverflow.ellipsis,
                                  style: kfontstyle(fontSize: 11.sp),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'CR | Route 101 | 16 May 2023 | 10:35',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          separatorBuilder: (context, index) => Divider(
                color: Colors.grey[300],
              ),
          itemCount: 10),
    );
  }
}
