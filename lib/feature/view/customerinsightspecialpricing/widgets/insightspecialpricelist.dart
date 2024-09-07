import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/cusinsightspdetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class InsightSpecialPriceList extends StatelessWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;

  const InsightSpecialPriceList(
      {super.key, required this.user, required this.customer});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: BlocBuilder<CusSpPriceBloc, CusSpPriceState>(
        builder: (context, state) {
          return state.when(
            getCusSpPriceHeadersState: (headers) => headers == null
                ? ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        ShimmerContainers(height: 60.h, width: double.infinity),
                    separatorBuilder: (context, index) => const SizedBox(),
                    itemCount: 10)
                : headers.isEmpty
                    ? Padding(
                        padding: const EdgeInsets.only(top: 250),
                        child: Text(
                          AppLocalizations.of(context)!.noDataFound,
                          style: kfontstyle(),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.only(
                          left: 05, right: 05,
                          //top: 10,
                          //  bottom: 10
                        ),
                        shrinkWrap: true,
                        itemCount: headers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  context.read<SpecialPriceDetailsBloc>().add(
                                      GetSpecialPriceDetailsEvent(
                                          prhID: headers[index].prhId!,
                                          searchQuery: ''));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              CustomerInsightSpecialPriceDetails(
                                                user: user,
                                                customer: customer,
                                                spPriceHeader: headers[index],
                                              )));
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      child: Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 25,
                                            backgroundColor:
                                                const Color(0xffA4C8E9),
                                            child: Image.asset(
                                              "assets/images/listicon.png",
                                              height: 20,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12.w,
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 10.0,
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    selectedLocale
                                                                ?.languageCode ==
                                                            'en'
                                                        ? headers[index]
                                                                .prhName ??
                                                            ''
                                                        : headers[index]
                                                                .arPrhName ??
                                                            '',
                                                    style: blueTextStyle(),
                                                  ),
                                                  Text(
                                                    "${headers[index].startDate} to ${headers[index].endDate}",
                                                    style: subTitleTextStyle(),
                                                  ),
                                                  Text(
                                                    headers[index].prhCode ??
                                                        '',
                                                    style: subTitleTextStyle(),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "${AppLocalizations.of(context)!.details}   ",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        const Icon(
                                          Icons.keyboard_arrow_right,
                                          size: 18,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Colors.grey.shade300,
                              ),
                            ],
                          );
                        },
                      ),
            cusSpPriceHeaderFailedState: () => Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Text(
                AppLocalizations.of(context)!.noDataAvailable,
                style: kfontstyle(),
              ),
            ),
          );
        },
      ),
    );
  }
}
