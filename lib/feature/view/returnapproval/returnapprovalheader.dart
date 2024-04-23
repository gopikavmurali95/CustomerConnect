import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReturnApprovalHeader extends StatelessWidget {
  const ReturnApprovalHeader({super.key});

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
          "Approvals  ",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
                itemBuilder: (context, index) => Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: const Color(0xffDB95B5),
                          child: Image.asset(
                            'assets/images/ar_li.png',
                            height: 20.h,
                            width: 20.w,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ReqId-12345',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Cuscode-123456 - ',
                                    style: kfontstyle(
                                      fontSize: 11.sp,
                                      color: const Color(0xff2C6B9E),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      "CusName",
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '23-04-2024 | 2:35',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                separatorBuilder: (context, index) => Divider(
                      color: Colors.grey[300],
                    ),
                itemCount: 10),
          ))
        ],
      ),
    );
  }
}
