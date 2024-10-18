import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerFocDetailScreen extends StatelessWidget {
  const CustomerFocDetailScreen({super.key});

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
          'Customer FOC Detail',
          // AppLocalizations.of(context)!.mustSellDetail,
          style: appHeading(),
        ),
      ),
      body: PopScope(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CFH53',
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
                                'MER01 - MER01 ${AppLocalizations.of(context)!.route}',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style.copyWith(
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none,
                                ),
                            children: [
                              TextSpan(
                                text: 'RTL1814 - ',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                              ),
                              TextSpan(
                                text: 'Al Dhafra Co Op Society, Liwa',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff413434)),
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '05 Oct 2024 | 19:42',
                          style:
                              kfontstyle(fontSize: 10.sp, color: Colors.grey),
                        ),
                      ],
                    ))
                  ],
                ))
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                // controller: mustSellDetailSearchCtrl,
                style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: AppLocalizations.of(context)!.searchHere,
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
            height: 5.h,
          ),
          Expanded(
              child: Column(
            children: [
              Container(
                height: 30.h,
                width: double.infinity,
                color: const Color(0xfff5f5f5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.item,
                        style: kfontstyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black54),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        children: [
                          Text(
                            'Total qty',
                            style: kfontstyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            'Bal Qty',
                            style: kfontstyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'OPCBOP',
                                            style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff7b70ac),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            'Arla Puck-Cheddar Block Orange',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '64'
                                          /* details[index].huom!.isEmpty ||
                                                  details[index].huom ==
                                                      null
                                              ? "-"
                                              : details[index].huom ?? "" */
                                          ,
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54),
                                        ),
                                        SizedBox(width: 50.w),
                                        Text(
                                          '10',
                                          /* details[index].msdHQty!.isEmpty ||
                                                  details[index].msdHQty ==
                                                      null
                                              ? "0"
                                              : details[index].msdHQty ??
                                                  "", */
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black54),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                index == 9
                                    ? const SizedBox.shrink()
                                    : Divider(
                                        color: Colors.grey[300],
                                      ),
                              ],
                            ),
                          )))
            ],
          ))
        ],
      )),
    );
  }
}
