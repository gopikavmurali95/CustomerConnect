import 'package:customer_connect/constants/fonts.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutOfStockCustomerDetailScreen extends StatefulWidget {
  const OutOfStockCustomerDetailScreen({super.key});

  @override
  State<OutOfStockCustomerDetailScreen> createState() =>
      _OutOfStockScreenState();
}

class _OutOfStockScreenState extends State<OutOfStockCustomerDetailScreen> {
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
          "Out Of Stock Customers",
          style: appHeading(),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                 Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: const Color(0xfffee8e0),
                                          borderRadius:
                                              BorderRadius.circular(20)),
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
                                                  "201232",
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      "Emmerch International Hotel",
                                                      style: kfontstyle(
                                                          fontSize: 10.sp,
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 64, 65, 67)),
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
                              ),
                              
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 3,top: 10),
                  child: Container(
                      height: 30.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade200),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const [
                            BoxShadow(
                                // ignore: use_full_hex_values_for_flutter_colors
                                color: Color(0xff00000050),
                                blurRadius: 0.4,
                                spreadRadius: 0.4)
                          ]),
                      child: TextFormField(
                        style:
                            kfontstyle(fontSize: 13.sp, color: Colors.black87),
                        // controller: _loadqSearchController,
                        onChanged: (value) {},
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 15,
                            ),
                            suffix: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 5.h),
                                Expanded(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.close,
                                      size: 13.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            hintText: "Search here",
                            hintStyle: TextStyle(
                                fontSize: 12.sp,
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
                        "Out of stock Items",
                        style: countHeading(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "3",
                          style: countHeading(),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => GestureDetector(
                              // onTap: () {
                              //   Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const OutOfStockCustomerDetailScreen()),
                              //   );
                              // },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "40077977",
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      "Divella farfalle Pasta 500kg Offer pack",
                                                      style: kfontstyle(
                                                          fontSize: 10.sp,
                                                          color: const Color
                                                              .fromARGB(
                                                              255, 64, 65, 67)),
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
                              ),
                            ),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10))
              ],
            )),
      ),
    );
  }
}
