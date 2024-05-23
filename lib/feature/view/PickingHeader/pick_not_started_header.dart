import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';

import 'package:customer_connect/feature/view/PickingHeader/widgets/not_started.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../data/models/picking_header_model/PickingInModel.dart';
import '../../state/bloc/picking_header/picking_header_bloc.dart';

class PickHeaderNotStarted extends StatefulWidget {
  final LoginUserModel user;
  const PickHeaderNotStarted({super.key, required this.user});

  @override
  State<PickHeaderNotStarted> createState() => _PickHeaderNotStartedState();
}

final _pickingnotstartedSearchCtrl = TextEditingController();
Timer? debounce;

class _PickHeaderNotStartedState extends State<PickHeaderNotStarted> {
  @override
  void initState() {
    _pickingnotstartedSearchCtrl.clear();
    context.read<PickingHeaderBloc>().add(const ClearPickingevent());
    context.read<PickingHeaderBloc>().add(GetpickingHeaderEvent(
        pickingHeadIn: PickingInModel(
            userID: widget.user.usrId,
            area: '',
            customer: '',
            fromDate: '01-01-2023',
            mode: 'N',
            outlet: '',
            route: '',
            subArea: '',
            toDate: '26-03-2024'),
        searchQuery: ''));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          "Picking Not Started",
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
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff00000050),
                        blurRadius: 0.4,
                        spreadRadius: 0.4)
                  ]),
              child: TextFormField(
                controller: _pickingnotstartedSearchCtrl,
                onChanged: (value) {
                  if (debounce?.isActive ?? false) debounce!.cancel();
                  debounce = Timer(
                    const Duration(
                      milliseconds: 500,
                    ),
                    () async {
                      if (value.isNotEmpty) {
                        context
                            .read<PickingHeaderBloc>()
                            .add(const ClearPickingevent());
                        context.read<PickingHeaderBloc>().add(
                            GetpickingHeaderEvent(
                                pickingHeadIn: PickingInModel(
                                    area: '',
                                    customer: '',
                                    fromDate: '01-01-2023',
                                    mode: 'N',
                                    outlet: '',
                                    route: '',
                                    subArea: '',
                                    toDate: '06-04-2024',
                                    userID: widget.user.usrId),
                                searchQuery: value.trim()));
                      } else {
                        context
                            .read<PickingHeaderBloc>()
                            .add(const ClearPickingevent());
                        context.read<PickingHeaderBloc>().add(
                            GetpickingHeaderEvent(
                                pickingHeadIn: PickingInModel(
                                    area: '',
                                    customer: '',
                                    fromDate: '01-01-2023',
                                    mode: '',
                                    outlet: '',
                                    route: '',
                                    subArea: '',
                                    toDate: '06-04-2024',
                                    userID: widget.user.usrId),
                                searchQuery: ''));
                      }
                    },
                  );
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    hintText: "Search here..",
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
                        _pickingnotstartedSearchCtrl.clear();
                        context
                            .read<PickingHeaderBloc>()
                            .add(const ClearPickingevent());
                        context.read<PickingHeaderBloc>().add(
                            GetpickingHeaderEvent(
                                pickingHeadIn: PickingInModel(
                                    userID: widget.user.usrId,
                                    area: '',
                                    customer: '',
                                    fromDate: '01-01-2023',
                                    mode: 'N',
                                    outlet: '',
                                    route: '',
                                    subArea: '',
                                    toDate: '26-03-2024'),
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
              ),
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        onRefresh: () => _onRefreshPicking(context),
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
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
                      "Not Started",
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
                                  count.length.toString(),
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
              const NotStartedHead(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _onRefreshPicking(BuildContext context) async {
    _pickingnotstartedSearchCtrl.clear();
    context.read<PickingHeaderBloc>().add(const ClearPickingevent());
    context.read<PickingHeaderBloc>().add(GetpickingHeaderEvent(
        pickingHeadIn: PickingInModel(
            userID: widget.user.usrId,
            area: '',
            customer: '',
            fromDate: '01-01-2023',
            mode: 'N',
            outlet: '',
            route: '',
            subArea: '',
            toDate: '26-03-2024'),
        searchQuery: ''));
    await Future.delayed(const Duration(seconds: 2));
  }
}
