import 'dart:async';

import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constants/fonts.dart';

class LoadDetailRejected extends StatefulWidget {
  final LoadingHeadermodel loadingheader;
  const LoadDetailRejected({super.key, required this.loadingheader});

  @override
  State<LoadDetailRejected> createState() => _LoadDetailRejectedState();
}

final _loadRejectedDetailSearchCtrl = TextEditingController();
Timer? debounce;

class _LoadDetailRejectedState extends State<LoadDetailRejected> {
  @override
  void initState() {
    _loadRejectedDetailSearchCtrl.clear();
    context.read<LoadingDetailBloc>().add(const ClearLoadingDetailEvent());
    context.read<LoadingDetailBloc>().add(GetloadingDetailEvent(
        iD: widget.loadingheader.id ?? '', searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.load_in} ${AppLocalizations.of(context)!.rejected}",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    widget.loadingheader.transactionCode ?? '',
                    style: blueTextStyle(),
                  ),
                  subtitle: RichText(
                      text: TextSpan(
                          text: "${widget.loadingheader.rotName ?? ''} |",
                          style: subTitleTextStyle(),
                          children: [
                        TextSpan(
                            text: "${widget.loadingheader.date ?? ''} ",
                            style: subTitleTextStyle()),
                      ])),
                  trailing: Container(
                      height: 25,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffF5C6C6)),
                      child: Center(
                          child: Text(
                        widget.loadingheader.status ?? '',
                        style: const TextStyle(fontSize: 10),
                      )))),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
                child: Container(
                    height: 40,
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
                      controller: _loadRejectedDetailSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ),
                          () async {
                            context
                                .read<LoadingDetailBloc>()
                                .add(const ClearLoadingDetailEvent());
                            context.read<LoadingDetailBloc>().add(
                                GetloadingDetailEvent(
                                    iD: widget.loadingheader.id!,
                                    searchQuery: value.trim()));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: AppLocalizations.of(context)!.searchHere,
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          suffix: InkWell(
                            onTap: () {
                              _loadRejectedDetailSearchCtrl.clear();
                              context
                                  .read<LoadingDetailBloc>()
                                  .add(const ClearLoadingDetailEvent());
                              context.read<LoadingDetailBloc>().add(
                                  GetloadingDetailEvent(
                                      iD: widget.loadingheader.id!,
                                      searchQuery: ''));
                            },
                            child: const Icon(
                              Icons.close,
                              size: 14,
                            ),
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: BlocBuilder<LoadingDetailBloc, LoadingDetailState>(
        builder: (context, state) {
          return state.when(
            getloadingDetail: (detail) => detail == null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) => ShimmerContainers(
                            height: 60.h, width: double.infinity),
                        separatorBuilder: (context, index) => Divider(
                              color: Colors.grey[300],
                            ),
                        itemCount: 10),
                  )
                : detail.isEmpty
                    ? Center(
                        child: Text(AppLocalizations.of(context)!.noDataFound),
                      )
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              color: Colors.grey.shade200,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 0),
                                          child: Text(
                                            AppLocalizations.of(context)!.items,
                                            style: boxHeading(),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: selectedLocale
                                                          ?.languageCode ==
                                                      "en"
                                                  ? 10
                                                  : 0,
                                              left: selectedLocale
                                                          ?.languageCode ==
                                                      'en'
                                                  ? 15
                                                  : 0),
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .sysQty,
                                            style: boxHeading(),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5.h,
                                        ),
                                        // Padding(
                                        //   padding:
                                        //       const EdgeInsets.only(left: 0),
                                        //   child: Text(
                                        //     AppLocalizations.of(context)!.liQty,
                                        //     style: boxHeading(),
                                        //   ),
                                        // ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: ListView.separated(
                                itemCount: detail.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 55,
                                            width: 200,
                                            color: Colors.white,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    detail[index].prdCode ?? '',
                                                    style: loadTextStyle()),
                                                Text(
                                                  selectedLocale
                                                              ?.languageCode ==
                                                          'en'
                                                      ? detail[index].prdName ??
                                                          ""
                                                      : detail[index]
                                                              .arprdname ??
                                                          '',
                                                  style: subTitleTextStyle(),
                                                ),
                                              ],
                                            ),
                                          ),
                                          // Column(
                                          //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          //   // crossAxisAlignment: CrossAxisAlignment.start,
                                          //   children: [
                                          //      Text(detail[index].liHigherUom!.isEmpty || detail[index].liHigherUom == null ?
                                          //       "-": detail[index].liHigherUom?? "",style:subTitleTextStyle() ,),

                                          //     const SizedBox(
                                          //       height: 5,
                                          //     ),
                                          //      Text(detail[index].liLowerUom!.isEmpty || detail[index].liLowerUom == null ?
                                          //       "-": detail[index].liLowerUom?? "",style:subTitleTextStyle() ,),

                                          //   ],
                                          // ),
                                          // Column(
                                          //   mainAxisAlignment:
                                          //       MainAxisAlignment.start,
                                          //   children: [
                                          //       Text(detail[index].higherQty== "0" || detail[index].higherQty == null ?
                                          //       "0": detail[index].higherQty?? "",style:subTitleTextStyle() ,),
                                          //     // Text(
                                          //     //   detail[index].higherQty ?? '',
                                          //     //   style: subTitleTextStyle(),
                                          //     // ),
                                          //     const SizedBox(
                                          //       height: 5,
                                          //     ),
                                          //       Text(detail[index].lowerQty== "0" || detail[index].lowerQty== null ?
                                          //       "0": detail[index].lowerQty?? "",style:subTitleTextStyle() ,),
                                          //     // Text(
                                          //     //   detail[index].lowerQty ?? "",
                                          //     //   style: subTitleTextStyle(),
                                          //     // ),
                                          //   ],
                                          // ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 50.0,
                                            ),
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  detail[index]
                                                              .higherUom!
                                                              .isEmpty ||
                                                          detail[index]
                                                                  .higherUom ==
                                                              null
                                                      ? "-"
                                                      : detail[index]
                                                              .higherUom ??
                                                          "",
                                                  style: subTitleTextStyle(),
                                                ),
                                                // Visibility(

                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  detail[index]
                                                              .lowerUom!
                                                              .isEmpty ||
                                                          detail[index]
                                                                  .lowerUom ==
                                                              null
                                                      ? "-"
                                                      : detail[index]
                                                              .lowerUom ??
                                                          "",
                                                  style: subTitleTextStyle(),
                                                ),

                                                // ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0, right: 10.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  detail[index].higherQty ==
                                                              "0" ||
                                                          detail[index]
                                                                  .higherQty ==
                                                              null
                                                      ? "0"
                                                      : detail[index]
                                                              .higherQty ??
                                                          "",
                                                  style: subTitleTextStyle(),
                                                ),
                                                // Text(
                                                //   detail[index].higherQty ?? "",
                                                //   style: subTitleTextStyle(),
                                                // ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  detail[index].lowerQty ==
                                                              "0" ||
                                                          detail[index]
                                                                  .lowerQty ==
                                                              null
                                                      ? "0"
                                                      : detail[index]
                                                              .lowerQty ??
                                                          "",
                                                  style: subTitleTextStyle(),
                                                ),
                                                // Text(
                                                //   detail[index].lowerQty ?? "",
                                                //   style: subTitleTextStyle(),
                                                // ),
                                              ],
                                            ),
                                          ),

                                          //  SizedBox(width: 0,)
                                        ],
                                      ),
                                      //  Divider(),
                                    ],
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) {
                                  return const Padding(
                                    padding:
                                        EdgeInsets.only(left: 0.0, right: 0),
                                    child: Divider(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
            loadingDetailFailedState: () => Center(
              child: Text(
                AppLocalizations.of(context)!.noDataAvailable,
                style: kfontstyle(),
              ),
            ),
          );
        },
      ),
    );
  }
}
