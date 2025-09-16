import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomerInsightSpecialPriceDetailsList extends StatelessWidget {
  const CustomerInsightSpecialPriceDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialPriceDetailsBloc, SpecialPriceDetailsState>(
      builder: (context, state) {
        return state.when(
            getSpecialPriceDetailsState: (spPrice) => spPrice == null
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.separated(
                          // physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) => ShimmerContainers(
                              height: 60.h, width: double.infinity),
                          separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                          itemCount: 10),
                    ),
                  )
                : Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 1.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    spPrice[index].prdCode ?? '',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff6E62A4),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    selectedLocale?.languageCode == "en"
                                        ? spPrice[index].prdName ?? ''
                                        : spPrice[index].prdNameArabic ?? '',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "UOM: ",
                                        style: boxHeading(),
                                      ),
                                      Text(
                                        spPrice[index].uom ?? '',
                                        style: subTitleTextStyle(),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Std Price: ",
                                        style: boxHeading(),
                                      ),
                                      Text(
                                        spPrice[index].stdPrice ?? '',
                                        style: subTitleTextStyle(),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.6,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(spPrice[index].specialPrice ?? ''),
                                  // SizedBox(
                                  //   height: 5.h,
                                  // ),
                                  // Text(spPrice[index].stdPrice ?? ''),

                                  Text(spPrice[index].pldReturnPrice ?? ''),
                                  // SizedBox(
                                  //   height: 5.h,
                                  // ),
                                  // Text(spPrice[index].specialPrice ?? ''),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      separatorBuilder: (context, index) => Divider(
                        color: Colors.grey[300],
                      ),
                      itemCount: spPrice.length,
                    ),
                  ),
            specialPriceDetailsFailedState: () => Center(
                  child: Text(
                    AppLocalizations.of(context)!.noDataAvailable,
                    style: kfontstyle(),
                  ),
                ));
      },
    );
  }
}
