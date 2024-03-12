import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/invoices/widgets/invoicedetaillist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoiceDetailScreen extends StatelessWidget {
  const InvoiceDetailScreen({super.key});

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
          "Invoices ",
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
        bottom: PreferredSize(
          preferredSize: Size(100, 120.h),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'M076876',
                            style: TextStyle(
                              fontSize: 13.sp,
                              color: const Color(0xff2C6B9E),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'A025206 - ',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  overflow: TextOverflow.ellipsis,
                                  'Tromp, Muller and Mitchell',
                                  style: TextStyle(
                                      fontSize: 13.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '199525 - ',
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  'Carrefour Hypermarket',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 13.sp),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'CR | Route 101 | 16 May 2023 | 10:35',
                            style:
                                TextStyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        /* Text(
                          '120.00',
                          style: TextStyle(fontSize: 13.sp),
                        ), */
                        Container(
                          height: 14.h,
                          width: 30.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffe4f7e2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              'DI',
                              style: TextStyle(
                                  fontSize: 10.sp,
                                  color: const Color(0xff413434)),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.4,
                              spreadRadius: 0.2)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search invoices",
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('items'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Type'),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Uom'),
                      SizedBox(
                        width: 15.h,
                      ),
                      const Text('Qty'),
                      SizedBox(
                        width: 15.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15.h,
          ),
          const Expanded(child: InvoiceDetailListWidget())
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.width / 1.8,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 30.h,
              width: double.infinity,
              color: const Color(0xfff5f5f5),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Type',
                      style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'value',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 15.h,
                        ),
                        Text(
                          'Discount',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 15.h,
                        ),
                        Text(
                          'Vat',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: 15.h,
                        ),
                        Text(
                          'Subtotal',
                          style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sales'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('108.00'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('2.40'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('5.28'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('100.32'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sales'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('108.00'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('2.40'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('5.28'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('100.32'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Sales'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('108.00'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('2.40'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('5.28'),
                      SizedBox(
                        width: 20.h,
                      ),
                      const Text('100.32'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Amount',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'AED 47.80',
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}