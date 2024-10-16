import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/insightsotheroptiongrid.dart';
import 'package:customer_connect/feature/view/customerinsightspecialpricing/customerinsightspecialpricing.dart';
import 'package:customer_connect/feature/view/customeritemlist/customeritemlist.dart';
import 'package:customer_connect/feature/view/documents/customerdocumentscreen.dart';
import 'package:customer_connect/feature/view/geolocation/geolocationscreen.dart';
import 'package:customer_connect/feature/view/outstanding/insigtsoutstanding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../custinsightpromotion/custinsightpromotion.dart';

class OtherOptionsWidget extends StatelessWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const OtherOptionsWidget(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*  Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InsghtsOutStandingScreen(
                        customer: customer,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                        user: user,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/outs.png',
                  title: AppLocalizations.of(context)!.outstanding,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerInsightSpecialPricing(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/spec.png',
                  title: AppLocalizations.of(context)!.specialpricing,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerInsightPromotion(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/promo.png',
                  title: AppLocalizations.of(context)!.promotions,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerItemList(
                        customer: customer,
                        user: user,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/itemlist.png',
                  title: AppLocalizations.of(context)!.customerItemList,
                ),
              ),
            )
          ],
        ),
        Row(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerDocumentScreen(
                        customer: customer,
                        user: user,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/document.png',
                  title: AppLocalizations.of(context)!.documents,
                ),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeoLocationScreen(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/location.png',
                  title: AppLocalizations.of(context)!.geolocation,
                ),
              ),
            )
          ],
        ) */

        BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
          builder: (context, settings) {
            return InsightsCusOtherOptionsDynamicGrid(items: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InsghtsOutStandingScreen(
                        customer: customer,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                        user: user,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/outs.png',
                  title: AppLocalizations.of(context)!.outstanding,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerInsightSpecialPricing(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/spec.png',
                  title: AppLocalizations.of(context)!.specialpricing,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerInsightPromotion(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/promo.png',
                  title: AppLocalizations.of(context)!.promotions,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerItemList(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/itemlist.png',
                  title: AppLocalizations.of(context)!.customerItemList,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CustomerDocumentScreen(
                        customer: customer,
                        user: user,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/document.png',
                  title: AppLocalizations.of(context)!.documents,
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeoLocationScreen(
                        customer: customer,
                        user: user,
                        fromdatectrl: fromdatectrl,
                        todatectrl: todatectrl,
                      ),
                    ),
                  );
                },
                child: OtherOptionsTilesWideget(
                  imgpath: 'assets/images/location.png',
                  title: AppLocalizations.of(context)!.geolocation,
                ),
              ),
            ], visibility: [
              settings.when(
                getCustomerSettingsState: (settings) =>
                    settings?.cusOutstanding == null ||
                            settings?.cusOutstanding != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              settings.when(
                getCustomerSettingsState: (settings) =>
                    settings?.cusSpPrice == null || settings?.cusSpPrice != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              settings.when(
                getCustomerSettingsState: (settings) =>
                    settings?.cusPromotion == null ||
                            settings?.cusPromotion != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              settings.when(
                getCustomerSettingsState: (settings) =>
                    settings?.cusItemList == null ||
                            settings?.cusItemList != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              settings.when(
                getCustomerSettingsState: (settings) =>
                    settings?.cusDocuments == null ||
                            settings?.cusDocuments != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              settings.when(
                getCustomerSettingsState: (settings) =>
                    settings?.cusGeoLocation == null ||
                            settings?.cusGeoLocation != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
            ]);
          },
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade100,
                offset: const Offset(0, 0),
                blurRadius: 2,
                spreadRadius: 2)
          ],
        ),
        // height: 38.h,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.sp, vertical: 10.sp),
          child: Row(
            children: [
              Image.asset(
                imgpath,
                height: 16.h,
              ),
              SizedBox(
                width: 10.sp,
              ),
              Text(
                title,
                style: kfontstyle(
                  fontSize: 10.sp,
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
