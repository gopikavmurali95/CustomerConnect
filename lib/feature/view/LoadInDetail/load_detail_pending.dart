import 'dart:async';

import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart';
// import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../constants/fonts.dart';

class LoadDetailPending extends StatefulWidget {
  final LoadingHeadermodel loadingheader;
  final LoginUserModel user;
  const LoadDetailPending(
      {super.key, required this.loadingheader, required this.user});

  @override
  State<LoadDetailPending> createState() => _LoadDetailPendingState();
}

final _loadPendingSearchCtrl = TextEditingController();
Timer? debounce;

class _LoadDetailPendingState extends State<LoadDetailPending> {
  @override
  void initState() {
    _loadPendingSearchCtrl.clear();
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
          "Load In Detail",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    widget.loadingheader.transactionCode ?? "",
                    style: blueTextStyle(),
                  ),
                  subtitle: Text(
                    widget.loadingheader.rotName ?? '',
                    style: subTitleTextStyle(),
                  ),
                  trailing: Container(
                      height: 25,
                      width: 60.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffECEFBE)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 5),
                        child: Text(
                          widget.loadingheader.status ?? '',
                          style: kfontstyle(fontSize: 10.sp),
                        ),
                      )))),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
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
                      controller: _loadPendingSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 200,
                          ),
                          () async {
                            context
                                .read<LoadingDetailBloc>()
                                .add(const ClearLoadingDetailEvent());
                            context.read<LoadingDetailBloc>().add(
                                GetloadingDetailEvent(
                                    iD: widget.loadingheader.id ?? '',
                                    searchQuery: value));
                          },
                        );
                      },
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          suffix: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 5.h),
                              Expanded(
                                child: IconButton(
                                  onPressed: () {
                                    _loadPendingSearchCtrl.clear();
                                    context
                                        .read<LoadingDetailBloc>()
                                        .add(const ClearLoadingDetailEvent());
                                    context.read<LoadingDetailBloc>().add(
                                          GetloadingDetailEvent(
                                              iD: widget.loadingheader.id ?? '',
                                              searchQuery: ''),
                                        );
                                  },
                                  icon: Icon(
                                    Icons.close,
                                    size: 13.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          hintText: "Search Items",
                          hintStyle: const TextStyle(
                              fontSize: 14,
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
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .sysQty,
                                            style: boxHeading(),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30.h,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 0),
                                          child: Text(
                                            AppLocalizations.of(context)!.liQty,
                                            style: boxHeading(),
                                          ),
                                        ),
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
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 15.0, top: 2),
                                            child: Container(
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
                                                      detail[index].prdCode ??
                                                          '',
                                                      style: loadTextStyle()),
                                                  Text(
                                                    selectedLocale
                                                                ?.languageCode ==
                                                            'en'
                                                        ? detail[index]
                                                                .prdName ??
                                                            ""
                                                        : detail[index]
                                                                .arprdname ??
                                                            '',
                                                    style: subTitleTextStyle(),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            // crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Visibility(
                                                visible:
                                                    detail[index].liHigherUom ==
                                                                null ||
                                                            detail[index]
                                                                .liHigherUom!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  detail[index].liHigherUom ??
                                                      "",
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Visibility(
                                                visible:
                                                    detail[index].liLowerUom ==
                                                                null ||
                                                            detail[index]
                                                                .liLowerUom!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  detail[index].liLowerUom ??
                                                      "",
                                                  style: subTitleTextStyle(),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                detail[index].higherQty ?? '',
                                                style: subTitleTextStyle(),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                detail[index].lowerQty ?? "",
                                                style: subTitleTextStyle(),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Column(
                                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              // crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Visibility(
                                                  visible:
                                                      detail[index].higherUom ==
                                                                  null ||
                                                              detail[index]
                                                                  .higherUom!
                                                                  .isEmpty
                                                          ? false
                                                          : true,
                                                  child: Text(
                                                    detail[index].higherUom ??
                                                        "",
                                                    style: subTitleTextStyle(),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Visibility(
                                                  visible:
                                                      detail[index].lowerUom ==
                                                                  null ||
                                                              detail[index]
                                                                  .lowerUom!
                                                                  .isEmpty
                                                          ? false
                                                          : true,
                                                  child: Text(
                                                    detail[index].lowerUom ??
                                                        '',
                                                    style: subTitleTextStyle(),
                                                  ),
                                                ),
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
                                                  detail[index].higherQty ?? "",
                                                  style: subTitleTextStyle(),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  detail[index].lowerQty ?? "",
                                                  style: subTitleTextStyle(),
                                                ),
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
