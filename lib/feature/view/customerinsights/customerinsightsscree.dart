import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/customertransactionwidget.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/otheroptionswidget.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/profileinfowidget.dart';
import 'package:customer_connect/feature/view/editprofile/editprofilescreen.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomerInsightsScreen extends StatefulWidget {
  final CusInsCustomersModel customer;
  final LoginUserModel user;
  const CustomerInsightsScreen(
      {super.key, required this.customer, required this.user});

  @override
  State<CustomerInsightsScreen> createState() => _CustomerInsightsScreenState();
}

final _fromdatectrl = TextEditingController();
final _todatectrl = TextEditingController();

class _CustomerInsightsScreenState extends State<CustomerInsightsScreen> {
  @override
  void initState() {
    _fromdatectrl.text = '1-${DateTime.now().month}-${DateTime.now().year}';
    _todatectrl.text =
        '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}';

    context.read<CusProfileBloc>().add(const ClearProfileEvent());
    context.read<CusProfileBloc>().add(GetCusProfileEvent(
        userID: widget.user.usrId ?? '', cusID: widget.customer.cusId ?? ''));

    context.read<CusInsTrnCountBloc>().add(GettrnCountsEvent(
        userId: widget.user.usrId ?? '',
        cusId: widget.customer.cusId ?? '',
        fDate: _fromdatectrl.text =
            '1-${DateTime.now().month}-${DateTime.now().year}',
        toDate: _todatectrl.text =
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}'));
    super.initState();
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
          AppLocalizations.of(context)!.customer_insights,
          style: appHeading(),
        ),
      ),
      body: RefreshIndicator.adaptive(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshCusIns(context),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 70,
                      width: 10,
                      decoration: BoxDecoration(
                          color: const Color(0xfffee8e0),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              text: widget.customer.cusCode ?? '',
                              style: kfontstyle(
                                fontSize: 12.sp,
                                color: const Color(0xff2C6B9E),
                                fontWeight: FontWeight.w500,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: '-', style: subTitleTextStyle()),
                                TextSpan(
                                  text: selectedLocale?.languageCode == "en"
                                      ? widget.customer.cusName ?? ''
                                      : widget.customer.arcusName ?? '',
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff413434)),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '${widget.customer.headerCode} - ',
                                style: kfontstyle(
                                    fontSize: 11.sp,
                                    color: const Color(0xff413434)),
                              ),
                              Expanded(
                                child: Text(
                                  selectedLocale?.languageCode == 'en'
                                      ? widget.customer.headerName ?? ""
                                      : widget.customer.arheaderName ?? '',
                                  overflow: TextOverflow.ellipsis,
                                  style: kfontstyle(fontSize: 12.sp),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '${widget.customer.cusType} | ${widget.customer.className} | ${selectedLocale?.languageCode == 'en' ? widget.customer.areaName : widget.customer.arAreaName} ',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                CustomerTraansactionWidget(
                  user: widget.user,
                  customer: widget.customer,
                  fromdatectrl: _fromdatectrl,
                  todatectrl: _todatectrl,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Text(
                      "${AppLocalizations.of(context)!.otherOptions}  ",
                      style: countHeading(),
                    ),
                  ],
                ),
                OtherOptionsWidget(
                  user: widget.user,
                  customer: widget.customer,
                  fromdatectrl: _fromdatectrl,
                  todatectrl: _todatectrl,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.profileDetails,
                      style: countHeading(),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            Platform.isIOS
                                ? CupertinoPageRoute(
                                    builder: (context) => EditProfileScreen(
                                        user: widget.user,
                                        customer: widget.customer))
                                : MaterialPageRoute(
                                    builder: (context) => EditProfileScreen(
                                      user: widget.user,
                                      customer: widget.customer,
                                    ),
                                  ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [Color(0xff99bedb), Color(0xff62a5d6)],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 8),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/svg/edit.svg',
                                height: 12.h,
                              ),
                              SizedBox(
                                width: 6.w,
                              ),
                              Text(
                                AppLocalizations.of(context)!.editProfile,
                                style: kfontstyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                const ProfileInfoWidget(),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshCusIns(BuildContext context) async {
    // _fromdatectrl.text = '1-${DateTime.now().month}-${DateTime.now().year}';
    // _todatectrl.text =
    //     '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}';

    context.read<CusProfileBloc>().add(const ClearProfileEvent());
    context.read<CusProfileBloc>().add(GetCusProfileEvent(
        userID: widget.user.usrId ?? '', cusID: widget.customer.cusId ?? ''));

    context.read<CusInsTrnCountBloc>().add(GettrnCountsEvent(
        userId: widget.user.usrId ?? '',
        cusId: widget.customer.cusId ?? '',
        fDate: _fromdatectrl.text,
        toDate: _todatectrl.text));
    await Future.delayed(const Duration(seconds: 2));
  }
}
