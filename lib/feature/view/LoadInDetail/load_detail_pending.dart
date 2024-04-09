import 'dart:async';

import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/fonts.dart';

class LoadDetailPending extends StatefulWidget {
  final LoadingHeadermodel loadingheader;
  const LoadDetailPending({super.key, required this.loadingheader});

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
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffECEFBE)),
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
                      controller: _loadPendingSearchCtrl,
                      onChanged: (value) {
                        if (debounce?.isActive ?? false) debounce!.cancel();
                        debounce = Timer(
                          const Duration(
                            milliseconds: 200,
                          ),
                          () async {
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
                        child: Text(
                          'No Data Found',
                          style: kfontstyle(),
                        ),
                      )
                    : SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 30,
                              color: Colors.grey.shade200,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 160),
                                    child: Text(
                                      "Items",
                                      style: boxHeading(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50),
                                    child: Text(
                                      "UOM",
                                      style: boxHeading(),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Text(
                                      "Qty",
                                      style: boxHeading(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            ListView.separated(
                              itemCount: detail.length,
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
                                            // height: 55,
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
                                                  detail[index].prdName ?? "",
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
                                              visible: detail[index]
                                                              .higherUom ==
                                                          null ||
                                                      detail[index]
                                                          .higherUom!
                                                          .isEmpty ||
                                                      detail[index].higherQty ==
                                                          null ||
                                                      detail[index]
                                                          .higherQty!
                                                          .isEmpty
                                                  ? false
                                                  : true,
                                              child: Text(
                                                detail[index].higherUom ?? '',
                                                style: subTitleTextStyle(),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Visibility(
                                              visible: detail[index]
                                                              .lowerUom ==
                                                          null ||
                                                      detail[index]
                                                          .lowerUom!
                                                          .isEmpty ||
                                                      detail[index].lowerQty ==
                                                          null ||
                                                      detail[index]
                                                          .lowerQty!
                                                          .isEmpty
                                                  ? false
                                                  : true,
                                              child: Text(
                                                detail[index].lowerUom ?? "",
                                                style: subTitleTextStyle(),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5, right: 20.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Visibility(
                                                visible: detail[index]
                                                                .higherUom ==
                                                            null ||
                                                        detail[index]
                                                            .higherUom!
                                                            .isEmpty ||
                                                        detail[index]
                                                                .higherQty ==
                                                            null ||
                                                        detail[index]
                                                            .higherQty!
                                                            .isEmpty
                                                    ? false
                                                    : true,
                                                child: Text(
                                                  detail[index].higherQty ?? '',
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
                                                                .isEmpty ||
                                                            detail[index]
                                                                    .lowerQty ==
                                                                null ||
                                                            detail[index]
                                                                .lowerQty!
                                                                .isEmpty
                                                        ? false
                                                        : true,
                                                child: Text(
                                                  detail[index].lowerQty ?? '',
                                                  style: subTitleTextStyle(),
                                                ),
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
                                  padding: EdgeInsets.only(left: 0.0, right: 0),
                                  child: Divider(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
            loadingDetailFailedState: () => Center(
              child: Text(
                'No Data Available',
                style: kfontstyle(),
              ),
            ),
          );
        },
      ),
    );
  }
}
