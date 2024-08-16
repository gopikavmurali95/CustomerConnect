import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'package:customer_connect/feature/view/fieldserviceinvoice/fieldserviceinvoicedetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../LoadInDetail/load_detail_completed.dart';

class FieldServiceInvoiceHeader extends StatelessWidget {
  final LoginUserModel user;
  FieldServiceInvoiceHeader({super.key, required this.user});

  final TextEditingController _fieldServiceSearchController =
      TextEditingController();

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
          AppLocalizations.of(context)!.fieldServices,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<ApprovalCountsBloc>()
              .add(GetApprovalsCountEvent(userID: user.usrId ?? ''));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: Container(
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff00000050),
                            blurRadius: 0.4,
                            spreadRadius: 0.4)
                      ]),
                  child: TextFormField(
                    controller: _fieldServiceSearchController,
                    onChanged: (value) {
                      debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ), () async {
                        context
                            .read<FieldServiceHeaderBloc>()
                            .add(GetAllFieldServiceHeadersEvent(
                                //mode: _selectedMaterialReq,
                                searchQuery: _fieldServiceSearchController.text,
                                userId: ''));
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 15,
                        ),
                        suffix: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5.h),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  if (_fieldServiceSearchController
                                      .text.isNotEmpty) {
                                    _fieldServiceSearchController.clear();

                                    context.read<FieldServiceHeaderBloc>().add(
                                        const GetAllFieldServiceHeadersEvent(
                                            searchQuery: "", userId: ''));
                                  }
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 13.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        hintText: AppLocalizations.of(context)!.searchItems,
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                        isDense: true,
                        counterText: "",
                        contentPadding: const EdgeInsets.all(15.0),
                        filled: true,
                        fillColor: Colors.white,
                        // suffix: InkWell(
                        //   onTap: () {
                        //     _loadPendingdetailsSearchCtrl.clear();
                        //     context.read<LoadingHeaderBloc>().add(
                        //         GetLoadingHeaderEvent(
                        //             searchQuery: '',
                        //             loadingin: LoadingHeaderInModel(
                        //                 userId: widget.user.usrId,
                        //                 fromDate: '01-01-2023',
                        //                 toDate: '23-03-2024',
                        //                 mode: 'DD',
                        //                 area: '',
                        //                 route: '',
                        //                 subArea: '')));
                        //   },
                        //   child: const Icon(
                        //     Icons.close,
                        //     size: 14,
                        //   ),
                        // ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none)),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    maxLength: 20,
                    // controller: _locationNameTextController,
                  )),
            ),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
                  BlocBuilder<FieldServiceHeaderBloc, FieldServiceHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getFieldServiceInvoiceHEadersState: (headers) => headers ==
                            null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
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
                        : ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            FieldServiceInvoiceDetails(
                                          header: headers[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: const Color(0xfffee8e0),
                                            borderRadius:
                                                BorderRadius.circular(20)),
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
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    headers[index].sjhNumber ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5.h,
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '${headers[index].cusCode} - ',
                                                        style: kfontstyle(
                                                          fontSize: 11.sp,
                                                          color: const Color(
                                                              0xff2C6B9E),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          selectedLocale
                                                                      ?.languageCode ==
                                                                  "en"
                                                              ? headers[index]
                                                                      .cusName ??
                                                                  ''
                                                              : headers[index]
                                                                      .arcusName ??
                                                                  '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    headers[index].transTime ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.grey),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                color: headers[index]
                                                            .status!
                                                            .isEmpty ||
                                                        headers[index].status !=
                                                            'Action Taken'
                                                    ? headers[index].status ==
                                                            'Rejected'
                                                        ? Colors.red[300]
                                                        : const Color(
                                                            0xfff7f4e2)
                                                    : const Color(0xffe3f7e2),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  20,
                                                ),
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 8,
                                                        vertical: 5),
                                                child: Text(
                                                  headers[index].status ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 10.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: headers[index]
                                                                  .status ==
                                                              'Rejected'
                                                          ? Colors.white54
                                                          : Colors.black54),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: headers.length),
                    fieldServiceInvoiceHeaderFailedState: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataAvailable,
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
