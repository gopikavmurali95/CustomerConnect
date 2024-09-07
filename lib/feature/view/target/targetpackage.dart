import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/target_details_list_model/target_details_list_model.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/state/bloc/targetpackagelist/target_package_list_bloc.dart';
import 'package:customer_connect/feature/view/target/widgets/targetpackagelist.dart';
import 'package:customer_connect/feature/view/target/widgets/targetpackagetiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TargetPackageScreen extends StatefulWidget {
  final TargetHeaderListModel header;
  final TargetDetailsListModel details;
  const TargetPackageScreen(
      {super.key, required this.details, required this.header});

  @override
  State<TargetPackageScreen> createState() => _TargetPackageScreenState();
}

TextEditingController targetPackagSearchCtrl = TextEditingController();
Timer? debounce;

class _TargetPackageScreenState extends State<TargetPackageScreen> {
  @override
  void initState() {
    targetPackagSearchCtrl.clear();
    context.read<TargetPackageListBloc>().add(const ClearTargetPackageList());
    context.read<TargetPackageListBloc>().add(GetTargetPackageListEvent(
        pkgID: widget.details.pkgId ?? '',
        fromDate:
            '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
        rotID: widget.header.rotID ?? '',
        serachQuery: ''));
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
          AppLocalizations.of(context)!.targetPackage,
          // "Target Package",
          style: appHeading(),
        ),
      ),
      body: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.details.pkgName ?? '',
                    style: countHeading(),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  TargetPAckageContainerWidget(
                    details: widget.details,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  SizedBox(
                    height: 30.h,
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      controller: targetPackagSearchCtrl,
                      style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                      decoration: InputDecoration(
                        isDense: true,
                        hintText:
                            "${AppLocalizations.of(context)!.searchItems}..",
                        suffix: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: IconButton(
                                  onPressed: () {
                                    if (targetPackagSearchCtrl
                                        .text.isNotEmpty) {
                                      targetPackagSearchCtrl.clear();

                                      context
                                          .read<TargetPackageListBloc>()
                                          .add(const ClearTargetPackageList());
                                      context.read<TargetPackageListBloc>().add(
                                          GetTargetPackageListEvent(
                                              pkgID: widget.details.pkgId ?? '',
                                              fromDate:
                                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                              rotID: widget.header.rotID ?? '',
                                              serachQuery: ''));
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
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
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
                          context.read<TargetPackageListBloc>().add(
                              GetTargetPackageListEvent(
                                  pkgID: widget.details.pkgId ?? '',
                                  fromDate:
                                      '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                  rotID: widget.header.rotID ?? '',
                                  serachQuery: value.trim()));
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.items,
                        style: countHeading(),
                      ),
                      BlocBuilder<TargetPackageListBloc,
                          TargetPackageListState>(
                        builder: (context, state) {
                          return state.when(
                              getTargetPackageListState: (count) =>
                                  count == null
                                      ? const SizedBox()
                                      : Text(
                                          count.length.toString(),
                                          style: countHeading(),
                                        ),
                              targetPackageListFailure: () => Text(
                                    '0',
                                    style: countHeading(),
                                  ));
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 30.h,
                  width: double.infinity,
                  color: const Color(0xfff5f5f5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: [
                        Flexible(
                            flex: 4,
                            fit: FlexFit.tight,
                            child: Text(AppLocalizations.of(context)!.item,
                                style: kfontstyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black54))),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                              AppLocalizations.of(context)!
                                  .achvdAmt, //"Achvd amt"
                              style: kfontstyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Text(
                              AppLocalizations.of(context)!
                                  .achvdQty, //'Achvd Qty',
                              style: kfontstyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54)),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: TargetPackageListItems(
              header: widget.header,
              details: widget.details,
            ))
          ],
        ),
      ),
    );
  }
}
