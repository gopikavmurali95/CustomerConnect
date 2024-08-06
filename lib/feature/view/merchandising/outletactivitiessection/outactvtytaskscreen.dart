import 'dart:async';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/get_task_header_in_model/get_task_header_in_model.dart';
import 'package:customer_connect/feature/data/models/merchandisingstatusfiltermodel/merchandisingstatusfiltermodel.dart';

import 'package:customer_connect/feature/state/bloc/merchandtaskheader/merchand_task_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OutletActivityTaskHeaderScreen extends StatefulWidget {
  final TextEditingController fromdatecontroller;
  final TextEditingController todatecontroller;

  const OutletActivityTaskHeaderScreen({
    super.key,
    required this.fromdatecontroller,
    required this.todatecontroller,
  });

  @override
  State<OutletActivityTaskHeaderScreen> createState() =>
      _PriceChangeHeaderState();
}

class _PriceChangeHeaderState extends State<OutletActivityTaskHeaderScreen> {
  List<MerchandisingStatusFilterModel> filterTaskHeaderMerchnd = [
    MerchandisingStatusFilterModel(statusName: "All", mode: 'AL'),
    MerchandisingStatusFilterModel(statusName: "Completed", mode: 'C'),
    MerchandisingStatusFilterModel(statusName: "Pending", mode: 'P'),
  ];

  Timer? debounce;
  TextEditingController taskHeaderSearchCtrl = TextEditingController();
  String selectedMode = "AL";
  @override
  void initState() {
    super.initState();
    selectedMode = "Al";
    taskHeaderSearchCtrl.clear();

    context.read<MerchandTaskHeaderBloc>().add(const TaskHeaderClearEvent());

    context.read<MerchandTaskHeaderBloc>().add(TaskHeaderGetEvent(
        tasks: GetTaskHeaderInModel(
            fromDate: "2024-01-01",//widget.fromdatecontroller.text,
            toDate: "2024-08-06",//widget.todatecontroller.text,
            status: "AL"),
        searchQuery: ''));
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
          "Tasks",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {},
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: taskHeaderSearchCtrl,
                  style: kfontstyle(
                      fontSize: 12.sp, color: const Color(0xff413434)),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search here..',
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (taskHeaderSearchCtrl.text.isNotEmpty) {
                                  taskHeaderSearchCtrl.clear();

                                  context
                                      .read<MerchandTaskHeaderBloc>()
                                      .add(const TaskHeaderClearEvent());
                                  context.read<MerchandTaskHeaderBloc>().add(
                                      TaskHeaderGetEvent(
                                          searchQuery: '',
                                          tasks: GetTaskHeaderInModel(
                                              fromDate: widget
                                                  .fromdatecontroller.text,
                                              toDate:
                                                  widget.todatecontroller.text,
                                              status: selectedMode)));
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
                      context.read<MerchandTaskHeaderBloc>().add(
                          TaskHeaderGetEvent(
                              // fromDate: widget.fromdatectrl.text,
                              // toDate: widget.todatectrl.text,
                              // status: selectedMerchSurveyMode,
                              searchQuery: value.trim(),
                              tasks: GetTaskHeaderInModel(
                                  fromDate: widget.fromdatecontroller.text,
                                  toDate: widget.todatecontroller.text,
                                  status: selectedMode)));
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
                  value: filterTaskHeaderMerchnd[0]
                      .mode, //filterFieldsPriceChange[0].mode,
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
                  items: filterTaskHeaderMerchnd
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    selectedMode = value!;
                    context
                        .read<MerchandTaskHeaderBloc>()
                        .add(const TaskHeaderClearEvent());
                    context.read<MerchandTaskHeaderBloc>().add(
                        TaskHeaderGetEvent(
                            searchQuery: taskHeaderSearchCtrl.text,
                            tasks: GetTaskHeaderInModel(
                                fromDate: widget.fromdatecontroller.text,
                                toDate: widget.todatecontroller.text,
                                status: selectedMode)));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
              child: BlocBuilder<MerchandTaskHeaderBloc, MerchandTaskHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getTaskHeaderSuccessState: ((tasksheader) => tasksheader == null? Padding(
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
                          ): tasksheader.isEmpty
                            ? const Center(
                                child: Text('No Data Availablehere'),
                              ):Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "All Tasks",
                              // _selectedPriceChangeMode == 'P'
                              //     ? 'Pending Approvals'
                              //     : 'Approved Requests',
                              style: countHeading(),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Text(
                                "${tasksheader.length}",
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
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {},
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
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${tasksheader[index].cusName}",
                                              //"40047977 - New task 01",
                                                style: blueTextStyle()),
                                            Row(
                                              children: [
                                                Text(
                                                  "${tasksheader[index].cusCode}",
                                                 //"201232-",
                                                  style: kfontstyle(
                                                    fontSize: 11.sp,
                                                    color:
                                                        const Color(0xff2C6B9E),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                          "${tasksheader[index].taskName}",
                                                      // "Emmerch International Hotel",
                                                      style:
                                                          subTitleTextStyle()),
                                                ),
                                              ],
                                            ),
                                            // Text(
                                            //   overflow:
                                            //       TextOverflow
                                            //           .ellipsis,
                                            //  "",
                                            //   style: kfontstyle(
                                            //       fontSize: 12.sp,
                                            //       color: const Color(
                                            //           0xff413434)),
                                            // ),
                                            Text(
                                              "Due on:${tasksheader[index].dueOn} |"
                                               "Completed on: ${tasksheader[index].compOn}",
                                             // "Due on: 01 Aug 2024 | Completed on: 05 Aug 2024",
                                              style: kfontstyle(
                                                  fontSize: 9.sp,
                                                  color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // height: 10.h,
                                        // width: 10.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xffe3f7e2),
                                          // color: pChange[index]
                                          //             .pchApprovalStatus! ==
                                          //         "Pending"
                                          //     ? const Color(
                                          //         0xfff7f4e2)
                                          //     : pChange[index]
                                          //                 .pchApprovalStatus! ==
                                          //             "Action Taken"
                                          //         ? const Color(
                                          //             0xffe3f7e2)
                                          //         : Colors
                                          //             .red[300],
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5, vertical: 3),
                                          child: Text(
                                           "${tasksheader[index].status}",
                                            style: kfontstyle(fontSize: 8.sp),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: 10),
                      ))
                    ],
                  )),
                     taskHeaderFailedState:() => const Center(
                          child: Text('No Data Available'),
                        ));
                        
                
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
