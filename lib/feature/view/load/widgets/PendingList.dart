import 'dart:io';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/view/LoadInDetail/load_detail_pending.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../constants/fonts.dart';

class PendingList extends StatelessWidget {
  final LoginUserModel user;
  const PendingList({super.key, required this.user});

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
                                                LoadDetailPending(
                                                    loadingheader:
                                                        loadingheaders[index],
                                                    user: user))
                                        : MaterialPageRoute(
                                            builder: (context) =>
                                                LoadDetailPending(
                                              loadingheader:
                                                  loadingheaders[index],
                                              user: user,
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
                                    backgroundColor: const Color(0xffA4C8E9),
                                    child: Image.asset(
                                      "assets/images/listicon.png",
                                      height: 20,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  loadingheaders[index].transactionCode ?? '',
                                  style: blueTextStyle(),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(bottom: 10.0),
                                  child: RichText(
                                      text: TextSpan(
                                    text: loadingheaders[index].rotName,
                                    style: subTitleTextStyle(),
                                  )),
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
          ),
        );
      },
    );
  }
}
