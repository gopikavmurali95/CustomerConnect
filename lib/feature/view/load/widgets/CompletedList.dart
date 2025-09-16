import 'dart:io';

import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/view/LoadInDetail/load_detail_completed.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/fonts.dart';

class CompletedList extends StatelessWidget {
  const CompletedList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingHeaderBloc, LoadingHeaderState>(
      builder: (context, state) {
        return state.when(
            getloadingHeaderState: (loadingheaders) => loadingheaders == null
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
                : loadingheaders.isEmpty
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height - 50,
                        child: Center(
                          child: Text(
                            AppLocalizations.of(context)!.noDataFound,
                            style: kfontstyle(),
                          ),
                        ),
                      )
                    : ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.only(
                          top: 10,
                          //  bottom: 10
                        ),
                        shrinkWrap: true,
                        itemCount: loadingheaders.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 50,
                                child: ListTile(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      Platform.isIOS
                                          ? CupertinoPageRoute(
                                              builder: (context) =>
                                                  LoadDetailCompleted(
                                                      loadingheader:
                                                          loadingheaders[
                                                              index]))
                                          : MaterialPageRoute(
                                              builder: (context) =>
                                                  LoadDetailCompleted(
                                                loadingheader:
                                                    loadingheaders[index],
                                              ),
                                            ),
                                    );
                                  },
                                  //titleAlignment: ListTileTitleAlignment.center,
                                  //minVerticalPadding:5,
                                  //minLeadingWidth: 50,
                                  //titleAlignment:ListTileTitleAlignment.center,
                                  horizontalTitleGap: 10,
                                  leading: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: CircleAvatar(
                                      radius: 20,
                                      backgroundColor: const Color(0xff9AD694),
                                      child: Image.asset(
                                        "assets/images/listicon.png",
                                        height: 20,
                                      ),
                                    ),
                                  ),
                                  title: Text(
                                    loadingheaders[index].transactionCode ?? "",
                                    style: blueTextStyle(),
                                  ),
                                  subtitle: Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10.0,
                                    ),
                                    child: RichText(
                                        text: TextSpan(
                                            text:
                                                "${loadingheaders[index].rotName} | ",
                                            style: subTitleTextStyle(),
                                            children: [
                                          TextSpan(
                                              text:
                                                  "${loadingheaders[index].date}",
                                              style: subTitleTextStyle()),
                                        ])),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 05
                                    // top: 10,bottom: 10
                                    ),
                                child: Divider(
                                  color: Colors.grey.shade300,
                                ),
                              )
                            ],
                          );
                        },
                      ),
            loadingHeaderFailedState: () => SizedBox(
                  height: MediaQuery.of(context).size.height - 50,
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context)!.noDataAvailable,
                      style: kfontstyle(),
                    ),
                  ),
                ));
      },
    );
  }
}
