import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/merchandisingstatusfiltermodel/merchandisingstatusfiltermodel.dart';
import 'package:customer_connect/feature/state/bloc/merchandisingsurvey/merchandising_survey_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutActvitySurveyHeaderScreen extends StatefulWidget {
  final TextEditingController fromdatectrl;
  final TextEditingController todatectrl;
  const OutActvitySurveyHeaderScreen({
    super.key,
    required this.fromdatectrl,
    required this.todatectrl,
  });

  @override
  State<OutActvitySurveyHeaderScreen> createState() =>
      _PriceChangeHeaderState();
}

List<MerchandisingStatusFilterModel> filterMerchandisingSurvey = [
  MerchandisingStatusFilterModel(statusName: "All ", mode: 'AL'),
  MerchandisingStatusFilterModel(statusName: "Completed", mode: 'C'),
  MerchandisingStatusFilterModel(statusName: "Pending", mode: 'P'),
];

Timer? debounce;
TextEditingController merchSurveySearchCtrl = TextEditingController();
String selectedMerchSurveyMode = 'AL';

class _PriceChangeHeaderState extends State<OutActvitySurveyHeaderScreen> {
  @override
  void initState() {
    selectedMerchSurveyMode = 'AL';
    merchSurveySearchCtrl.clear();
    context
        .read<MerchandisingSurveyBloc>()
        .add(const ClearMerchandisingSurveyList());
    context.read<MerchandisingSurveyBloc>().add(GetMerchandisingSurveyEvent(
        fromDate: widget.fromdatectrl.text,
        toDate: widget.todatectrl.text,
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
          "Survey",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: merchSurveySearchCtrl,
                style:
                    kfontstyle(fontSize: 12.sp, color: const Color(0xff413434)),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search here..',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              if (merchSurveySearchCtrl.text.isNotEmpty) {
                                merchSurveySearchCtrl.clear();

                                context
                                    .read<MerchandisingSurveyBloc>()
                                    .add(const ClearMerchandisingSurveyList());
                                context.read<MerchandisingSurveyBloc>().add(
                                    GetMerchandisingSurveyEvent(
                                        fromDate: widget.fromdatectrl.text,
                                        toDate: widget.todatectrl.text,
                                        status: selectedMerchSurveyMode,
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
                    context.read<MerchandisingSurveyBloc>().add(
                        GetMerchandisingSurveyEvent(
                            fromDate: widget.fromdatectrl.text,
                            toDate: widget.todatectrl.text,
                            status: selectedMerchSurveyMode,
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: DropdownButtonFormField(
                elevation: 0,
                value: filterMerchandisingSurvey[0].mode,
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
                items: filterMerchandisingSurvey
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  selectedMerchSurveyMode = value!;
                  context
                      .read<MerchandisingSurveyBloc>()
                      .add(const ClearMerchandisingSurveyList());
                  context.read<MerchandisingSurveyBloc>().add(
                      GetMerchandisingSurveyEvent(
                          fromDate: widget.fromdatectrl.text,
                          toDate: widget.todatectrl.text,
                          status: value,
                          searchQuery: merchSurveySearchCtrl.text));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child:
                BlocBuilder<MerchandisingSurveyBloc, MerchandisingSurveyState>(
              builder: (context, state) {
                return state.when(
                    getMerchandisingSurveyState: (survey) => survey == null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: ListView.separated(
                                //physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    ShimmerContainers(
                                        height: 60.h, width: double.infinity),
                                separatorBuilder: (context, index) => Divider(
                                      color: Colors.grey[300],
                                    ),
                                itemCount: 10),
                          )
                        : survey.isEmpty
                            ? const Center(
                                child: Text('No Data Available'),
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
                                          "All Surveys",
                                          // _selectedPriceChangeMode == 'P'
                                          //     ? 'Pending Approvals'
                                          //     : 'Approved Requests',
                                          style: countHeading(),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5.0),
                                          child: Text(
                                            survey.length.toString(),
                                            style: countHeading(),
                                          ),
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
                                          horizontal: 15),
                                      child: ListView.separated(
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) => Row(
                                                children: [
                                                  Container(
                                                    height: 50,
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
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "${survey[index].cusCode} - ${survey[index].surveyName}",
                                                            style:
                                                                blueTextStyle()),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "${survey[index].cusCode}-",
                                                              style: kfontstyle(
                                                                fontSize: 11.sp,
                                                                color: const Color(
                                                                    0xff2C6B9E),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  "${survey[index].cusName}",
                                                                  style:
                                                                      subTitleTextStyle()),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          "Due on: ${survey[index].dueOn} ",
                                                          style: kfontstyle(
                                                              fontSize: 9.sp,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    // height: 10.h,
                                                    // width: 10.h,
                                                    decoration: BoxDecoration(
                                                      color: survey[index]
                                                                  .status! ==
                                                              "Pending"
                                                          ? const Color(
                                                              0xfff7f4e2)
                                                          : const Color(
                                                              0xffe3f7e2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        10,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 5,
                                                          vertical: 3),
                                                      child: Text(
                                                        "${survey[index].status}",
                                                        style: kfontstyle(
                                                            fontSize: 8.sp),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                          separatorBuilder: (context, index) =>
                                              Divider(
                                                color: Colors.grey[300],
                                              ),
                                          itemCount: survey.length),
                                    ),
                                  )
                                ],
                              ),
                    getMerchandisingSurveyFailedState: () => const Center(
                          child: Text('No Data Available'),
                        ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
