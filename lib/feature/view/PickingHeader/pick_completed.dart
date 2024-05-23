import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingInModel.dart';

import 'package:customer_connect/feature/view/PickingHeader/widgets/completed.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../state/bloc/picking_header/picking_header_bloc.dart';

class PickHeaderCompleted extends StatefulWidget {
  final LoginUserModel user;
  const PickHeaderCompleted({super.key, required this.user});

  @override
  State<PickHeaderCompleted> createState() => _PickHeaderCompletedState();
}

final _pickingCompletedSearchCtrl = TextEditingController();
Timer? debounce;

class _PickHeaderCompletedState extends State<PickHeaderCompleted> {
  @override
  void initState() {
    _pickingCompletedSearchCtrl.clear();
    context.read<PickingHeaderBloc>().add(const ClearPickingevent());
    context.read<PickingHeaderBloc>().add(GetpickingHeaderEvent(
        pickingHeadIn: PickingInModel(
            userID: widget.user.usrId,
            area: '',
            customer: '',
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            mode: 'PC',
            outlet: '',
            route: '',
            subArea: '',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}'),
        searchQuery: ''));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        // leading: SizedBox(
        //   height: 05,
        //   width: 04,
        //   child: SvgPicture.asset("assets/svg/path.svg",height: 60,fit: BoxFit.scaleDown,),
        // ),
        title: Text(
          "Picking Completed",
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
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller: _pickingCompletedSearchCtrl,
                onChanged: (value) {
                  if (debounce?.isActive ?? false) debounce!.cancel();
                  debounce = Timer(
                    const Duration(
                      milliseconds: 200,
                    ),
                    () async {
                      context
                          .read<PickingHeaderBloc>()
                          .add(const ClearPickingevent());
                      context.read<PickingHeaderBloc>().add(GetpickingHeaderEvent(
                          pickingHeadIn: PickingInModel(
                              area: '',
                              customer: '',
                              fromDate:
                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                              mode: 'PC',
                              outlet: '',
                              route: '',
                              subArea: '',
                              toDate:
                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                              userID: widget.user.usrId),
                          searchQuery: value.trim()));
                    },
                  );
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    hintText: "Search here..",
                    hintStyle: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                    isDense: true,
                    counterText: "",
                    contentPadding: const EdgeInsets.all(15.0),
                    filled: true,
                    fillColor: Colors.white,
                    suffix: SizedBox(
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.sp),
                            child: InkWell(
                              onTap: () {
                                _pickingCompletedSearchCtrl.clear();
                                context
                                    .read<PickingHeaderBloc>()
                                    .add(const ClearPickingevent());
                                context.read<PickingHeaderBloc>().add(
                                      GetpickingHeaderEvent(
                                          pickingHeadIn: PickingInModel(
                                              userID: widget.user.usrId,
                                              area: '',
                                              customer: '',
                                              fromDate:
                                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                              mode: 'PC',
                                              outlet: '',
                                              route: '',
                                              subArea: '',
                                              toDate:
                                                  '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}'),
                                          searchQuery: ''),
                                    );
                              },
                              child: Icon(
                                Icons.close,
                                size: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey.shade200)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey.shade200)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey.shade200))),
                textAlign: TextAlign.start,
                maxLines: 1,
                maxLength: 20,
                // controller: _locationNameTextController,
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshPicking(context),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //SizedBox(width: 05,),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                    child: Text(
                      "Completed",
                      style: countHeading(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                    child: BlocBuilder<PickingHeaderBloc, PickingHeaderState>(
                      builder: (context, state) {
                        return state.when(
                          getPickingHeaderState: (count) => count != null
                              ? Text(
                                  "${count.length}",
                                  style: countHeading(),
                                )
                              : Text(
                                  "0",
                                  style: countHeading(),
                                ),
                          pickingheaderFailedState: () => Text(
                            "0",
                            style: countHeading(),
                          ),
                        );
                      },
                    ),
                  ),
                  // SizedBox(width: ,),
                ],
              ),
              const Completed(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshPicking(BuildContext context) async {
    _pickingCompletedSearchCtrl.clear();
    context.read<PickingHeaderBloc>().add(const ClearPickingevent());
    context.read<PickingHeaderBloc>().add(GetpickingHeaderEvent(
        pickingHeadIn: PickingInModel(
            userID: widget.user.usrId,
            area: '',
            customer: '',
            fromDate: '01-01-2023',
            mode: 'PC',
            outlet: '',
            route: '',
            subArea: '',
            toDate: '26-03-2024'),
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }
}
