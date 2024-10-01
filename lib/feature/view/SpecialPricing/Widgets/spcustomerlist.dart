import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SPCustomerList extends StatelessWidget {
  const SPCustomerList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialPriceCustomersBloc, SpecialPriceCustomersState>(
      builder: (context, state) {
        return state.when(
          getSpecialPriceCustomers: (customer) => customer == null
              ? SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ShimmerContainers(
                            height: 60.h, width: double.infinity),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10),
                  ),
                )
              : SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: customer.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: CircleAvatar(
                                    backgroundColor: const Color(0xffB3DAF7),
                                    child: Center(
                                      child: Text(
                                        customer[index]
                                            .cusName!
                                            .split('')
                                            .toList()[0],
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: DefaultTextStyle.of(context)
                                                .style,
                                            children: [
                                              TextSpan(
                                                text:
                                                    '${customer[index].cusCode} - ',
                                                style: kfontstyle(
                                                  fontSize: 11.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                ),
                                              ),
                                              TextSpan(
                                                  text: selectedLocale
                                                              ?.languageCode ==
                                                          'en'
                                                      ? customer[index]
                                                              .cusName ??
                                                          ''
                                                      : customer[index]
                                                              .arcusName ??
                                                          '',
                                                  style: subTitleTextStyle()
                                                  // overflow: TextOverflow.ellipsis,
                                                  ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                                  ],
                                )),
                              ],
                            ),
                            const Divider()
                          ],
                        );
                      }),
                ),
          specialPriceCustomersFailedState: () => SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Text(
                AppLocalizations.of(context)!.noDataAvailable,
                style: kfontstyle(),
              ),
            ),
          ),
        );
      },
    );
  }
}
