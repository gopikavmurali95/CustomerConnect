import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/loading_header_in_model/loading_header_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/view/load/widgets/CompletedList.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadCompleted extends StatefulWidget {
  final LoginUserModel user;
  const LoadCompleted({super.key, required this.user});

  @override
  State<LoadCompleted> createState() => _LoadCompletedState();
}

final _loadCompletedSearchCtrl = TextEditingController();
Timer? debounce;

class _LoadCompletedState extends State<LoadCompleted> {
  @override
  void initState() {
    _loadCompletedSearchCtrl.clear();
    context.read<LoadingHeaderBloc>().add(const ClearLoadingHeadderEvent());
    context.read<LoadingHeaderBloc>().add(GetLoadingHeaderEvent(
        searchQuery: '',
        loadingin: LoadingHeaderInModel(
            userId: widget.user.usrId,
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            mode: 'LD',
            area: '',
            route: '',
            subArea: '')));
    super.initState();
  }

  Future<void> _onRefreshLoadin(BuildContext context) async {
    _loadCompletedSearchCtrl.clear();
    context.read<LoadingHeaderBloc>().add(const ClearLoadingHeadderEvent());
    context.read<LoadingHeaderBloc>().add(GetLoadingHeaderEvent(
        searchQuery: '',
        loadingin: LoadingHeaderInModel(
            userId: widget.user.usrId,
            fromDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            toDate:
                '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
            mode: 'LD',
            area: '',
            route: '',
            subArea: '')));
    await Future.delayed(const Duration(seconds: 2));
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
          "${AppLocalizations.of(context)!.load_in} ${AppLocalizations.of(context)!.completed}",
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
            padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
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
                  controller: _loadCompletedSearchCtrl,
                  onChanged: (value) {
                    if (debounce?.isActive ?? false) debounce!.cancel();
                    debounce = Timer(
                      const Duration(
                        milliseconds: 500,
                      ),
                      () async {
                        context
                            .read<LoadingHeaderBloc>()
                            .add(const ClearLoadingHeadderEvent());
                        context.read<LoadingHeaderBloc>().add(
                              GetLoadingHeaderEvent(
                                searchQuery: value.trim(),
                                loadingin: LoadingHeaderInModel(
                                    userId: widget.user.usrId,
                                    fromDate:
                                        '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                    toDate:
                                        '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                    mode: 'LD',
                                    area: '',
                                    route: '',
                                    subArea: ''),
                              ),
                            );
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
                          _loadCompletedSearchCtrl.clear();
                          context
                              .read<LoadingHeaderBloc>()
                              .add(const ClearLoadingHeadderEvent());
                          context.read<LoadingHeaderBloc>().add(GetLoadingHeaderEvent(
                              searchQuery: '',
                              loadingin: LoadingHeaderInModel(
                                  userId: widget.user.usrId,
                                  fromDate:
                                      '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                  toDate:
                                      '${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                                  mode: 'LD',
                                  area: '',
                                  route: '',
                                  subArea: '')));
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
        ),
      ),
      body: RefreshIndicator.adaptive(
        triggerMode: RefreshIndicatorTriggerMode.anywhere,
        color: const Color.fromARGB(255, 181, 218, 245),
        displacement: BorderSide.strokeAlignCenter,
        onRefresh: () => _onRefreshLoadin(context),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
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
                          const EdgeInsets.only(left: 10.0, right: 20, top: 10),
                      child: Text(
                        AppLocalizations.of(context)!.completed,
                        style: countHeading(),
                      ),
                    ),
                    BlocBuilder<LoadingHeaderBloc, LoadingHeaderState>(
                      builder: (context, state) {
                        return state.when(
                          getloadingHeaderState: (loadingheaders) =>
                              loadingheaders != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10, top: 10),
                                      child: Text(
                                        "${loadingheaders.length}",
                                        style: countHeading(),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10.0, right: 10, top: 10),
                                      child: Text(
                                        "0",
                                        style: countHeading(),
                                      ),
                                    ),
                          loadingHeaderFailedState: () => Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10, top: 10),
                            child: Text(
                              "0",
                              style: countHeading(),
                            ),
                          ),
                        );
                      },
                    ),
                    // SizedBox(width: ,),
                  ],
                ),
                const CompletedList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
