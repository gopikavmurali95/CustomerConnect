import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/customertransactionwidget.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/otheroptionswidget.dart';
import 'package:customer_connect/feature/view/customerinsights/widgets/profileinfowidget.dart';
import 'package:customer_connect/feature/view/editprofile/editprofilescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
          "Customer Insights ",
          style: appHeading(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
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
                  Expanded(
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
                            Expanded(
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                widget.customer.cusName ?? "",
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
                            Expanded(
                              child: Text(
                                widget.customer.headerName ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: kfontstyle(fontSize: 12.sp),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${widget.customer.cusType} | ${widget.customer.className} | ${widget.customer.areaName} ',
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
                    "Other Options  ",
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
                    "Profile Details",
                    style: countHeading(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
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
                              'Edit Profile',
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
    );
  }
}
