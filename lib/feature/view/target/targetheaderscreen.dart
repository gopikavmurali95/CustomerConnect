import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/targetheaderlist/targer_header_list_bloc.dart';
import 'package:customer_connect/feature/view/target/routetarget.dart';
import 'package:customer_connect/feature/view/target/widgets/targetgraphwidget.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TargetHeaderScreen extends StatefulWidget {
  const TargetHeaderScreen({super.key});

  @override
  State<TargetHeaderScreen> createState() => _TargetHeaderScreenState();
}

TextEditingController targetHeaderSearchCtrl = TextEditingController();
Timer? debounce;

class _TargetHeaderScreenState extends State<TargetHeaderScreen> {
  @override
  void initState() {
    targetHeaderSearchCtrl.clear();
    context.read<TargerHeaderListBloc>().add(const ClearTargetHeaderItems());
    context.read<TargerHeaderListBloc>().add(GetTargetHeaderItemsEvent(
        fromDate:
            '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
        // '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
        searchQuery: ''));
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
          AppLocalizations.of(context)!.target,
          //"Target",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const TargetGraphWidget(),
            SizedBox(
              height: 10.sp,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: targetHeaderSearchCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText:
                        "${AppLocalizations.of(context)!.searchRoutes}...",
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (targetHeaderSearchCtrl.text.isNotEmpty) {
                                  targetHeaderSearchCtrl.clear();

                                  context
                                      .read<TargerHeaderListBloc>()
                                      .add(const ClearTargetHeaderItems());
                                  context.read<TargerHeaderListBloc>().add(
                                      GetTargetHeaderItemsEvent(
                                          fromDate:
                                              '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
                                          searchQuery: ''));
                                }
                              },
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
                  onChanged: (value) {
                    debounce = Timer(
                        const Duration(
                          milliseconds: 500,
                        ), () async {
                      context.read<TargerHeaderListBloc>().add(
                          GetTargetHeaderItemsEvent(
                              fromDate:
                                  '${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}',
                              searchQuery: value.trim()));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            BlocBuilder<TargerHeaderListBloc, TargerHeaderListState>(
              builder: (context, state) {
                return state.when(
                  getTargetHeaderItemsState: (header) => header == null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  ShimmerContainers(
                                      height: 60.h, width: double.infinity),
                              separatorBuilder: (context, index) => Divider(
                                    color: Colors.grey[300],
                                  ),
                              itemCount: 10),
                        )
                      : header.isEmpty
                          ? Center(
                              child: Text(
                                AppLocalizations.of(context)!.noDataFound,
                                style: kfontstyle(),
                              ),
                            )
                          : Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        AppLocalizations.of(context)!
                                            .routeWisetargets,
                                        // "Route Wise Targets",
                                        style: countHeading(),
                                      ),
                                      Text(
                                        header.length.toString(),
                                        style: countHeading(),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: ListView.builder(
                                    itemCount: header.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            Platform.isIOS
                                                ? CupertinoPageRoute(
                                                    builder: (context) =>
                                                        RouteTargetWidget(
                                                            headr:
                                                                header[index]))
                                                : CupertinoPageRoute(
                                                    builder: (context) =>
                                                        RouteTargetWidget(
                                                          headr: header[index],
                                                        )));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 50.h,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xfffee8e0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Expanded(
                                                  child: Row(
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                '${header[index].rotCode} - ${selectedLocale?.languageCode == 'en' ? header[index].rotName : header[index].arrotName}',
                                                                style:
                                                                    blueTextStyle()),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    // "${AppLocalizations.of(context)!.targrtAmount} : header[index].targetAmt}",
                                                                    '${AppLocalizations.of(context)!.targetAmount} : ${header[index].targetAmt}',
                                                                    style:
                                                                        subTitleTextStyle(),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                Expanded(
                                                                  child: Text(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    '${AppLocalizations.of(context)!.targetQuantity}: ${header[index].targetQty}',
                                                                    style:
                                                                        subTitleTextStyle(),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Divider(
                                              color: Colors.grey[300],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                  targetHeaderItemsFailed: () => Center(
                    child: Text(
                      AppLocalizations.of(context)!.noDataAvailable,
                      style: kfontstyle(),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
