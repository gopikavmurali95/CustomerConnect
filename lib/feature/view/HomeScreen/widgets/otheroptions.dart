import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/view/HomeScreen/widgets/dybnamicgrid.dart';
import 'package:customer_connect/feature/view/SpecialPricing/specialpricingheader.dart';
import 'package:customer_connect/feature/view/activityreview/activityreviewheader.dart';
import 'package:customer_connect/feature/view/approvals/approvalscreen.dart';
import 'package:customer_connect/feature/view/customerinsights/customersscreen.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';
import 'package:customer_connect/feature/view/outstanding/outstandingheader.dart';
import 'package:customer_connect/feature/view/promotions/promotionsheader.dart';
import 'package:customer_connect/feature/view/target/targetheaderscreen.dart';
import 'package:customer_connect/feature/view/tracking/trackingscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherOptionsHomeWidget extends StatelessWidget {
  final LoginUserModel user;
  const OtherOptionsHomeWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
      builder: (context, state) {
        return SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            child: DynamicGridWidget(items: [
              GestureDetector(
                  onTap: () {
                    context
                        .read<ApprovalCountsBloc>()
                        .add(const ClearApprovalCounts());
                    context
                        .read<ApprovalCountsBloc>()
                        .add(GetApprovalsCountEvent(userID: user.usrId ?? ''));
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ApprovalScreen(
                          user: user,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 65.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300.withOpacity(.4),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Opacity(
                            opacity: 0.07,
                            child: Image.asset(
                              "assets/images/apvl.png",
                              height: 30.h,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/apvl.png",
                                  height: 23.h,
                                ),
                                SizedBox(
                                  height: 8.w,
                                ),
                                Text(
                                  "Approvals",
                                  style: headTextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomersScren(
                            user: user,
                          ),
                        ));
                  },
                  child: Container(
                    height: 65.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300.withOpacity(.4),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Opacity(
                            opacity: 0.1,
                            child: Image.asset(
                              "assets/images/customer.png",
                              height: 30.h,
                              width: 30.h,
                            ),
                          ),
                        ),
                        // Center-aligned content
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/customer.png",
                                  height: 23.h,
                                  width: 20.h,
                                ),
                                SizedBox(
                                  height: 8.w,
                                ),
                                Text("Customer Insights",
                                    textAlign: TextAlign.center,
                                    style: headTextStyle()),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const TrackSalesManScreen(),
                        ));
                  },
                  child: Container(
                    height: 65.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300.withOpacity(.4),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Opacity(
                            opacity: 0.07,
                            child: Image.asset(
                              "assets/images/ts.png",
                              height: 30.h,
                              width: 30.h,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/ts.png",
                                  height: 23.h,
                                  width: 30.h,
                                ),
                                SizedBox(
                                  height: 8.w,
                                ),
                                Text(
                                  "Tracking",
                                  textAlign: TextAlign.center,
                                  style: headTextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PromotionHeader(
                                  user: user,
                                )));
                  },
                  child: Container(
                    height: 65.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300.withOpacity(.4),
                            spreadRadius: 4,
                            blurRadius: 10,
                            offset: const Offset(0, 3)),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Opacity(
                            opacity: 0.07,
                            child: Image.asset(
                              "assets/images/pro.png",
                              height: 30.h,
                              width: 30.h,
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Center the content vertically
                              crossAxisAlignment: CrossAxisAlignment
                                  .center, // Center the content horizontally
                              children: [
                                Image.asset(
                                  "assets/images/pro.png",
                                  height: 23.h,
                                  width: 23
                                      .h, // Ensure width matches height for consistent sizing
                                ),
                                SizedBox(
                                  height: 8.w,
                                ),
                                Text(
                                  "Promotions",
                                  textAlign: TextAlign.center,
                                  style: headTextStyle(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpecialPricingHeader(
                        user: user,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 65.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300.withOpacity(.4),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Opacity(
                          opacity: 0.07,
                          child: Image.asset(
                            "assets/images/file.png",
                            height: 30.h,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/file.png",
                                height: 23.h,
                              ),
                              SizedBox(
                                height: 8.w,
                              ),
                              Text(
                                "Special Price",
                                style: headTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OutstandingHeaderScreen(
                        isfromUser: false,
                        user: user,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 65.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300.withOpacity(.4),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Opacity(
                          opacity: 0.07,
                          child: Image.asset(
                            "assets/images/os.png",
                            height: 30.h,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/os.png",
                                height: 23.h,
                              ),
                              SizedBox(
                                height: 8.w,
                              ),
                              Text(
                                "Outstanding",
                                style: headTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const TargetHeaderScreen(),
                      ));
                },
                child: Container(
                  height: 65.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300.withOpacity(.4),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Opacity(
                          opacity: 0.07,
                          child: Image.asset(
                            "assets/images/home/target@2x.png",
                            height: 30.h,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/home/target@2x.png",
                                height: 23.h,
                              ),
                              SizedBox(
                                height: 8.w,
                              ),
                              Text(
                                "Target",
                                style: headTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) =>
                            const ActivityReviewHeaderScreen(),
                      ));
                },
                child: Container(
                  height: 65.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300.withOpacity(.4),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Opacity(
                          opacity: 0.07,
                          child: Image.asset(
                            "assets/images/home/act_rev.png",
                            height: 30.h,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/home/act_rev.png",
                                height: 23.h,
                              ),
                              SizedBox(
                                height: 8.w,
                              ),
                              Text(
                                "Activity Review",
                                textAlign: TextAlign.center,
                                style: headTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const MerchandisingScreen(),
                      ));
                },
                child: Container(
                  height: 65.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300.withOpacity(.4),
                          spreadRadius: 4,
                          blurRadius: 10,
                          offset: const Offset(0, 3)),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        left: 0,
                        child: Opacity(
                          opacity: 0.07,
                          child: Image.asset(
                            "assets/images/home/mer@2x.png",
                            height: 30.h,
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/home/mer@2x.png",
                                height: 23.h,
                              ),
                              SizedBox(
                                height: 8.w,
                              ),
                              Text(
                                "Merchandising",
                                textAlign: TextAlign.center,
                                style: headTextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ], visibility: [
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.approvals == null || settings?.approvals != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.custInsight == null ||
                            settings?.custInsight != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.tracking == null || settings?.tracking != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.promo == null || settings?.promo != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.spclPrice == null || settings?.spclPrice != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.outstand == null || settings?.outstand != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.target == null || settings?.target != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.actReview == null || settings?.actReview != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
              state.when(
                getCustomerSettingsState: (settings) =>
                    settings?.merch == null || settings?.merch != 'Y'
                        ? false
                        : true,
                customerSettingsFailedState: () => true,
              ),
            ]),
          ),
        );
      },
    );
  }
}
