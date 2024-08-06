import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailslist/target_details_list_bloc.dart';
import 'package:customer_connect/feature/view/target/targetpackage.dart';
import 'package:customer_connect/feature/view/target/widgets/routetargetdays.dart';
import 'package:customer_connect/feature/view/target/widgets/routetargetgraph.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RouteTargetWidget extends StatefulWidget {
  final TargetHeaderListModel headr;
  const RouteTargetWidget({super.key, required this.headr});

  @override
  State<RouteTargetWidget> createState() => _RouteTargetWidgetState();
}

TextEditingController targetDetailsSearchCtrl = TextEditingController();
Timer? debounce;

class _RouteTargetWidgetState extends State<RouteTargetWidget> {
  @override
  void initState() {
    targetDetailsSearchCtrl.clear();
    context.read<TargetDetailsListBloc>().add(const ClearTargetDetailsList());
    context.read<TargetDetailsListBloc>().add(GetTargetDetailsListEvent(
        fromDate:
            '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
        rotID: widget.headr.rotID ?? '',
        searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Route Target",
          style: appHeading(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RouteTargetDaysWidget(
              headr: widget.headr,
            ),
            SizedBox(
              height: 10.h,
            ),
            RouteTargetGraphWidget(
              header: widget.headr,
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: targetDetailsSearchCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search packages..',
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (targetDetailsSearchCtrl.text.isNotEmpty) {
                                  targetDetailsSearchCtrl.clear();

                                  context
                                      .read<TargetDetailsListBloc>()
                                      .add(const ClearTargetDetailsList());
                                  context.read<TargetDetailsListBloc>().add(
                                      GetTargetDetailsListEvent(
                                          fromDate:
                                              '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
                                          rotID: widget.headr.rotID ?? '',
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
                      context.read<TargetDetailsListBloc>().add(
                          GetTargetDetailsListEvent(
                              fromDate:
                                  '${DateTime.now().month}-${DateTime.now().day}-${DateTime.now().year}',
                              rotID: widget.headr.rotID ?? '',
                              searchQuery: value.trim()));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            BlocBuilder<TargetDetailsListBloc, TargetDetailsListState>(
              builder: (context, state) {
                return state.when(
                    getTargetDetailsListState: ((details) => details == null
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
                        : details.isEmpty
                            ? Center(
                                child: Text(
                                  'No Data Found',
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
                                          'Package Wise Target',
                                          style: countHeading(),
                                        ),
                                        Text(
                                          details.length.toString(),
                                          style: countHeading(),
                                        )
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
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount: details.length,
                                      itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        TargetPackageScreen(
                                                          details:
                                                              details[index],
                                                          header: widget.headr,
                                                        )));
                                          },
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    height: 40.h,
                                                    width: 10,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfffee8e0),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20)),
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
                                                                  details[index]
                                                                          .pkgName ??
                                                                      '',
                                                                  style:
                                                                      blueTextStyle()),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      'Target Amount : ${details[index].targetAmt}',
                                                                      style: kfontstyle(
                                                                          fontSize:
                                                                              11,
                                                                          color:
                                                                              const Color(0xff413434))),
                                                                  Text(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      'Target Quantity : ${details[index].targetQty}',
                                                                      style: kfontstyle(
                                                                          fontSize:
                                                                              11,
                                                                          color:
                                                                              const Color(0xff413434))),
                                                                ],
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      'Achieved Amount : ${details[index].achAmt}',
                                                                      style: kfontstyle(
                                                                          fontSize:
                                                                              11,
                                                                          color:
                                                                              const Color(0xff413434))),
                                                                  Text(
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      'Achieved Quantity : ${details[index].achQty}',
                                                                      style: kfontstyle(
                                                                          fontSize:
                                                                              11,
                                                                          color:
                                                                              const Color(0xff413434))),
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
                              )),
                    getTargetDetailsListFailed: () => Center(
                          child: Text(
                            'No Data Available',
                            style: kfontstyle(),
                          ),
                        ));
              },
            )
          ],
        ),
      ),
    );
  }
}
