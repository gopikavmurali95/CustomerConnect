import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/merchandisingstatusfiltermodel/merchandisingstatusfiltermodel.dart';
import 'package:customer_connect/feature/state/bloc/merchcreditnoterequest/merch_credit_note_request_bloc.dart';
import 'package:customer_connect/feature/view/merchandising/merchandising.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MerchandiseCreditNoteRequestScreen extends StatefulWidget {
  const MerchandiseCreditNoteRequestScreen({
    super.key,
  });

  @override
  State<MerchandiseCreditNoteRequestScreen> createState() =>
      _CreditNoteHeaderScreenState();
}

List<MerchandisingStatusFilterModel> filterCreditNoteReq = [
  MerchandisingStatusFilterModel(statusName: "All", mode: 'AL'),
  MerchandisingStatusFilterModel(statusName: "Approved", mode: 'AP'),
  MerchandisingStatusFilterModel(statusName: "Requested", mode: 'RQ'),
];
TextEditingController _merchCreditNoteSearch = TextEditingController();
Timer? debounce;
String _selectedCreditNoteMode = 'AL';

class _CreditNoteHeaderScreenState
    extends State<MerchandiseCreditNoteRequestScreen> {
  @override
  void initState() {
    _selectedCreditNoteMode = 'AL';
    _merchCreditNoteSearch.clear();
    filterCreditNoteReq = [
      MerchandisingStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "All" : "جميع الطلبات",
          mode: 'AL'),
      MerchandisingStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Approved" : "مصدق عليه",
          mode: 'AP'),
      MerchandisingStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == "en" ? "Requested" : "التمس",
          mode: 'RQ'),
    ];
    context
        .read<MerchCreditNoteRequestBloc>()
        .add(const ClearMerchCreditNoteRequestData());
    context.read<MerchCreditNoteRequestBloc>().add(
        GetMerchCreditNoteRequestEvent(
            fromDate: fromdateController.text,
            toDate: todateController.text,
            status: 'AL',
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
            AppLocalizations.of(context)!.creditNoteRequests,
            //"Credit note Requests",
            style: appHeading(),
          ),
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              child: TextFormField(
                controller: _merchCreditNoteSearch,
                style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: AppLocalizations.of(context)!.searchHere,
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              if (_merchCreditNoteSearch.text.isNotEmpty) {
                                _merchCreditNoteSearch.clear();

                                context.read<MerchCreditNoteRequestBloc>().add(
                                    const ClearMerchCreditNoteRequestData());
                                context.read<MerchCreditNoteRequestBloc>().add(
                                    GetMerchCreditNoteRequestEvent(
                                        fromDate: fromdateController.text,
                                        toDate: todateController.text,
                                        status: _selectedCreditNoteMode,
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
                    context.read<MerchCreditNoteRequestBloc>().add(
                        GetMerchCreditNoteRequestEvent(
                            fromDate: fromdateController.text,
                            toDate: todateController.text,
                            status: _selectedCreditNoteMode,
                            searchQuery: value.trim()));
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width - 20,
              child: DropdownButtonFormField(
                elevation: 0,
                value: filterCreditNoteReq[0].mode,
                dropdownColor: Colors.white,
                style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                decoration: InputDecoration(
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
                items: filterCreditNoteReq
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  _selectedCreditNoteMode = value!;
                  context
                      .read<MerchCreditNoteRequestBloc>()
                      .add(const ClearMerchCreditNoteRequestData());
                  context.read<MerchCreditNoteRequestBloc>().add(
                      GetMerchCreditNoteRequestEvent(
                          fromDate: fromdateController.text,
                          toDate: todateController.text,
                          status: value,
                          searchQuery: _merchCreditNoteSearch.text));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: BlocBuilder<MerchCreditNoteRequestBloc,
                MerchCreditNoteRequestState>(
              builder: (context, state) {
                return state.when(
                    getMerchCreditNoteRequestState: (creditNote) =>
                        creditNote == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ListView.separated(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) =>
                                        ShimmerContainers(
                                            height: 60.h,
                                            width: double.infinity),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                    itemCount: 10),
                              )
                            : creditNote.isEmpty
                                ? Center(
                                    child: Text(AppLocalizations.of(context)!
                                        .noDataAvailable),
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
                                              _selectedCreditNoteMode == 'AL'
                                                  ? AppLocalizations.of(
                                                          context)!
                                                      .allRequests
                                                  : _selectedCreditNoteMode ==
                                                          'AP'
                                                      ? AppLocalizations.of(
                                                              context)!
                                                          .approvedRequests
                                                      : AppLocalizations.of(
                                                              context)!
                                                          .requestedRequest,
                                              style: countHeading(),
                                            ),
                                            Text(
                                              creditNote.length.toString(),
                                              style: countHeading(),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Expanded(
                                        child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: ListView.separated(
                                                itemBuilder:
                                                    (context, index) =>
                                                        GestureDetector(
                                                          onTap: () {},
                                                          child: Row(
                                                            children: [
                                                              Container(
                                                                height: 50,
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
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            creditNote[index].cnhNumber ??
                                                                                '',
                                                                            style:
                                                                                kfontstyle(
                                                                              fontSize: 12.sp,
                                                                              color: const Color(0xff2C6B9E),
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          RichText(
                                                                            text:
                                                                                TextSpan(
                                                                              style: DefaultTextStyle.of(context).style,
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: '${creditNote[index].cusCode} - ',
                                                                                  style: kfontstyle(
                                                                                    fontSize: 11.sp,
                                                                                    color: const Color(0xff2C6B9E),
                                                                                  ),
                                                                                ),
                                                                                TextSpan(text: selectedLocale?.languageCode == 'en' ? creditNote[index].cusName ?? '' : creditNote[index].arCusName ?? '', style: subTitleTextStyle()
                                                                                    // overflow: TextOverflow.ellipsis,
                                                                                    ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          // Row(
                                                                          //   children: [
                                                                          //     Text(
                                                                          //       "${creditNote[index].cusCode}-",
                                                                          //       style: kfontstyle(
                                                                          //         fontSize: 11.sp,
                                                                          //         color: const Color(0xff2C6B9E),
                                                                          //       ),
                                                                          //     ),
                                                                          //     Expanded(
                                                                          //       child: Text(
                                                                          //         overflow: TextOverflow.ellipsis,
                                                                          //         selectedLocale?.languageCode == "en" ? creditNote[index].cusName ?? '' : creditNote[index].arCusName ?? '',
                                                                          //         //creditNote[index].cusName ?? '',
                                                                          //         style: kfontstyle(fontSize: 12.sp, color: const Color(0xff413434)),
                                                                          //       ),
                                                                          //     ),
                                                                          //   ],
                                                                          // ),
                                                                          Text(
                                                                            creditNote[index].date ??
                                                                                '',
                                                                            style:
                                                                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: creditNote[index].status ==
                                                                                "Requested"
                                                                            // AppLocalizations.of(context)!.requested
                                                                            ? const Color(0xfff7f4e2)
                                                                            : const Color(0xffe3f7e2),
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                          20,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsets
                                                                            .symmetric(
                                                                            horizontal:
                                                                                8,
                                                                            vertical:
                                                                                5),
                                                                        child:
                                                                            Text(
                                                                          selectedLocale?.languageCode == "en"
                                                                              ? creditNote[index].status ?? ''
                                                                              : creditNote[index].arStatus ?? '',
                                                                          // creditNote[index].status ??
                                                                          //     '',
                                                                          style: kfontstyle(
                                                                              fontSize: 10.sp,
                                                                              fontWeight: FontWeight.w400,
                                                                              color: Colors.black54),
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                separatorBuilder: (context,
                                                        index) =>
                                                    Divider(
                                                      color: Colors.grey[300],
                                                    ),
                                                itemCount: creditNote.length)),
                                      ),
                                    ],
                                  ),
                    merchCreditRequestFailed: () => Center(
                          child: Text(
                              AppLocalizations.of(context)!.noDataAvailable),
                        ));
              },
            ),
          ),
        ]));
  }
}
