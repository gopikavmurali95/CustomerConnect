// ignore_for_file: file_names
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/load/load_completed.dart';
import 'package:customer_connect/feature/view/load/load_pending.dart';
import 'package:customer_connect/feature/view/load/load_rejected.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';

import '../../../../constants/fonts.dart';
import '../../PickingHeader/pick_completed.dart';
import '../../PickingHeader/pick_ongoing.dart';
import '../../PickingHeader/pick_not_started_header.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PickingWidget extends StatelessWidget {
  final LoginUserModel user;
  const PickingWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child:
          BlocBuilder<PickingAndLoadingCountBloc, PickingAndLoadingCountState>(
        builder: (context, state) {
          return state.when(
            plCountSuccessState: (count) {
              if (count != null) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: Column(
                    children: [
                      BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                        builder: (context, state) {
                          return Visibility(
                            visible: state.when(
                              getCustomerSettingsState: (settings) =>
                                  settings?.picking == null ||
                                          settings?.picking != 'Y'
                                      ? false
                                      : true,
                              customerSettingsFailedState: () => true,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 1, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                          AppLocalizations.of(context)!.picking,
                                          style: countHeading()),
                                      Text(
                                        count.pickingTotal ?? '',
                                        style: countHeading(),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0, right: 0, top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        flex: 3,
                                        fit: FlexFit.tight,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PickHeaderNotStarted(
                                                        user: user),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            // height: 70,
                                            width: 110.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      count.pickingNotStarted ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text(
                                                          "(${count.pickingNotStartedRoute} ${AppLocalizations.of(context)!.routes})",
                                                          style:
                                                              subTextStyle()),
                                                      /* Text(
                                                  count.pickingNotStartedRoute ??
                                                      '',
                                                  style: subTextStyle()),
                                              Text(" Routes)",
                                                  style: subTextStyle()), */
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/svg/pending.svg",
                                                        height: 8.h,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      //Icon(Icons.note_add_outlined,size: 12,),
                                                      Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .not_started,
                                                          style:
                                                              statusTextStyle()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Flexible(
                                        flex: 3,
                                        fit: FlexFit.tight,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PickHeaderOngoing(
                                                  user: user,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            // height: 70,
                                            width: 110,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      count.pickingOngoing ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text("(",
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          count.pickingOngoingRoute ??
                                                              '',
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          " ${AppLocalizations.of(context)!.routes})",
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/svg/ongoing.svg",
                                                        height: 8.h,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .ongoing,
                                                          style:
                                                              statusTextStyle()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Flexible(
                                        flex: 3,
                                        fit: FlexFit.tight,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PickHeaderCompleted(
                                                  user: user,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            // height: 70,
                                            width: 110,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      count.pickingCompleted ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text("(",
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          count.pickingCompletedRoute ??
                                                              '',
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          " ${AppLocalizations.of(context)!.routes})",
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/svg/completed.svg",
                                                        height: 8.h,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      //Icon(Icons.note_add_outlined,size: 12,),
                                                      Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .completed,
                                                          style:
                                                              statusTextStyle()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                              ],
                            ),
                          );
                        },
                      ),

                      //////////////////////////////////////////////////////////////////////////////////////
                      BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                        builder: (context, state) {
                          return Visibility(
                            visible: state.when(
                              getCustomerSettingsState: (settings) =>
                                  settings?.loadin == null ||
                                          settings?.loadin != 'Y'
                                      ? false
                                      : true,
                              customerSettingsFailedState: () => true,
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 2, vertical: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!.load_in,
                                        style: countHeading(),
                                      ),
                                      Text(
                                        count.loadInTotal ?? '',
                                        style: countHeading(),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0.0, right: 0, top: 3),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Flexible(
                                        flex: 3,
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LoadPending(
                                                  user: user,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            // height: 70,
                                            width: 110,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      count.loadInPending ?? '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text("(",
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          count.loadInPendingRoute ??
                                                              '',
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          " ${AppLocalizations.of(context)!.routes})",
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/svg/pending.svg",
                                                        height: 8.h,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      //Icon(Icons.note_add_outlined,size: 12,),
                                                      Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .pending,
                                                          style:
                                                              statusTextStyle()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Flexible(
                                        flex: 3,
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LoadCompleted(
                                                  user: user,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            // height: 70,
                                            width: 110,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      count.loadInCompleted ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text("(",
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          count.loadInCompletedRoute ??
                                                              '',
                                                          style:
                                                              subTextStyle()),
                                                      Text(
                                                          " ${AppLocalizations.of(context)!.routes})",
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/svg/completed.svg",
                                                        height: 8.h,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      //Icon(Icons.note_add_outlined,size: 12,),
                                                      Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .completed,
                                                          style:
                                                              statusTextStyle()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.w,
                                      ),
                                      Flexible(
                                        flex: 3,
                                        fit: FlexFit.tight,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    LoadRejected(
                                                  user: user,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            // height: 70,
                                            width: 110,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 12,
                                                      vertical: 8),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      count.loadInCancelled ??
                                                          '',
                                                      style: countHeading()),
                                                  Row(
                                                    children: [
                                                      Text(
                                                          '(${count.loadInCancelledRoute}) ${AppLocalizations.of(context)!.routes}',
                                                          style:
                                                              subTextStyle()),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 2.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      SvgPicture.asset(
                                                        "assets/svg/rejected.svg",
                                                        height: 8.h,
                                                      ),
                                                      SizedBox(
                                                        width: 8.w,
                                                      ),
                                                      //Icon(Icons.note_add_outlined,size: 12,),
                                                      Text(
                                                          AppLocalizations.of(
                                                                  context)!
                                                              .rejected,
                                                          style:
                                                              statusTextStyle()),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                )
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                );
              } else {
                return ShimmerContainers(
                  height: 120.h,
                  width: double.infinity,
                ); // Return a default Widget when count is null
              }
            },
            plCountFailedState: () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: Column(
                children: [
                  BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                    builder: (context, state) {
                      return Visibility(
                        visible: state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.picking == null ||
                                      settings?.picking != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 1, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(AppLocalizations.of(context)!.picking,
                                      style: countHeading()),
                                  Text(
                                    '0',
                                    style: countHeading(),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 0, top: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PickHeaderNotStarted(
                                                    user: user),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        // height: 70,
                                        width: 110.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text("(0)",
                                                      style: subTextStyle()),
                                                  /* Text(
                                                  count.pickingNotStartedRoute ??
                                                      '',
                                                  style: subTextStyle()),
                                              Text(" Routes)",
                                                  style: subTextStyle()), */
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/pending.svg",
                                                    height: 8.h,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  //Icon(Icons.note_add_outlined,size: 12,),
                                                  Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .not_started,
                                                      style: statusTextStyle()),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PickHeaderOngoing(
                                              user: user,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        // height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text("(",
                                                      style: subTextStyle()),
                                                  Text('0',
                                                      style: subTextStyle()),
                                                  Text(
                                                      " ${AppLocalizations.of(context)!.routes})",
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/ongoing.svg",
                                                    height: 8.h,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ongoing,
                                                      style: statusTextStyle()),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                PickHeaderCompleted(
                                              user: user,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        // height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text("(",
                                                      style: subTextStyle()),
                                                  Text('0',
                                                      style: subTextStyle()),
                                                  Text(
                                                      " ${AppLocalizations.of(context)!.routes})",
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/completed.svg",
                                                    height: 8.h,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  //Icon(Icons.note_add_outlined,size: 12,),
                                                  Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .completed,
                                                      style: statusTextStyle()),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  BlocBuilder<CustomerSettingsBloc, CustomerSettingsState>(
                    builder: (context, state) {
                      return Visibility(
                        visible: state.when(
                          getCustomerSettingsState: (settings) =>
                              settings?.loadin == null ||
                                      settings?.loadin != 'Y'
                                  ? false
                                  : true,
                          customerSettingsFailedState: () => true,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 2, vertical: 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppLocalizations.of(context)!.load_in,
                                    style: countHeading(),
                                  ),
                                  Text(
                                    '0',
                                    style: countHeading(),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 0.0, right: 0, top: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoadPending(
                                              user: user,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        // height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text("(",
                                                      style: subTextStyle()),
                                                  Text('0',
                                                      style: subTextStyle()),
                                                  Text(
                                                      " ${AppLocalizations.of(context)!.routes})",
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/pending.svg",
                                                    height: 8.h,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  //Icon(Icons.note_add_outlined,size: 12,),
                                                  Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .pending,
                                                      style: statusTextStyle()),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoadCompleted(
                                              user: user,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        // height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text("(",
                                                      style: subTextStyle()),
                                                  Text('0',
                                                      style: subTextStyle()),
                                                  Text(
                                                      " ${AppLocalizations.of(context)!.routes})",
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/completed.svg",
                                                    height: 8.h,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  //Icon(Icons.note_add_outlined,size: 12,),
                                                  Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .completed,
                                                      style: statusTextStyle()),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Flexible(
                                    flex: 3,
                                    fit: FlexFit.tight,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => LoadRejected(
                                              user: user,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        // height: 70,
                                        width: 110,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 8),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('0', style: countHeading()),
                                              Row(
                                                children: [
                                                  Text(
                                                      '(0) ${AppLocalizations.of(context)!.routes}',
                                                      style: subTextStyle()),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 2.h,
                                              ),
                                              Row(
                                                children: [
                                                  SvgPicture.asset(
                                                    "assets/svg/rejected.svg",
                                                    height: 8.h,
                                                  ),
                                                  SizedBox(
                                                    width: 8.w,
                                                  ),
                                                  //Icon(Icons.note_add_outlined,size: 12,),
                                                  Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .rejected,
                                                      style: statusTextStyle()),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
