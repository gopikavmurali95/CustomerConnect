import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_geo_loc_in_model/cus_geo_loc_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart';
import 'package:customer_connect/feature/view/geolocation/widgets/geolocationlistwidget.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GeoLocationScreen extends StatefulWidget {
  final LoginUserModel user;
  final CusInsCustomersModel customer;
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const GeoLocationScreen(
      {super.key,
      required this.user,
      required this.customer,
      required this.fromdatectrl,
      required this.todatectrl});

  @override
  State<GeoLocationScreen> createState() => _GeoLocationScreenState();
}

class _GeoLocationScreenState extends State<GeoLocationScreen> {
  @override
  void initState() {
    context.read<CusGeoLocationBloc>().add(const ClearCusgeoLocationEvent());
    context.read<CusGeoLocationBloc>().add(
          GetCusGeoLocationEvent(
            cusGeoLocInModel: CusGeoLocInModel(
                cusId: widget.customer.cusId,
                area: '',
                fromDate: widget.fromdatectrl.text,
                toDate: widget.todatectrl.text,
                route: '',
                subArea: '',
                userId: widget.user.usrId),
          ),
        );
    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    context.read<CusGeoLocationBloc>().add(const ClearCusgeoLocationEvent());
    context.read<CusGeoLocationBloc>().add(
          GetCusGeoLocationEvent(
            cusGeoLocInModel: CusGeoLocInModel(
                cusId: widget.customer.cusId,
                area: '',
                fromDate: widget.fromdatectrl.text,
                toDate: widget.todatectrl.text,
                route: '',
                subArea: '',
                userId: widget.user.usrId),
          ),
        );
    await Future.delayed(const Duration(seconds: 2));
  }

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
          AppLocalizations.of(context)!.geolocation,
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
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 10,
                            decoration: BoxDecoration(
                                color: const Color(0xfffee8e0),
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          SizedBox(
                            // height: 55.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '${widget.customer.cusCode} - ',
                                      style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 200.w,
                                      child: Text(
                                        overflow: TextOverflow.ellipsis,
                                        selectedLocale?.languageCode == 'en'
                                            ? widget.customer.cusName ?? ""
                                            : widget.customer.arcusName ?? '',
                                        style: kfontstyle(
                                            fontSize: 12.sp,
                                            color: const Color(0xff413434)),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '${widget.customer.headerCode} - ',
                                      style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                    SizedBox(
                                      width: 150.w,
                                      child: Text(
                                        selectedLocale?.languageCode == 'en'
                                            ? widget.customer.headerName ?? ""
                                            : widget.customer.arheaderName ??
                                                '',
                                        overflow: TextOverflow.ellipsis,
                                        style: kfontstyle(fontSize: 12.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName} ',
                                  style: kfontstyle(
                                      fontSize: 10.sp, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey[300],
                      )
                    ],
                  ),
                ),
                SizedBox(
                    // height: MediaQuery.of(context).size.height,
                    child: GeoLocationListWidget(
                  customer: widget.customer,
                  user: widget.user,
                  fromdatectrl: widget.fromdatectrl,
                  todatectrl: widget.todatectrl,
                )),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
