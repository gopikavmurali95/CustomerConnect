import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/view/LoadInDetail/load_detail_rejected.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/fonts.dart';

class RejectedList extends StatelessWidget {
  const RejectedList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingHeaderBloc, LoadingHeaderState>(
      builder: (context, state) {
        return state.when(
          getloadingHeaderState: (loadingheaders) => loadingheaders == null
              ? const Center(
                  child: CupertinoActivityIndicator(
                    animating: true,
                    color: Colors.red,
                    radius: 30,
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.only(
                    left: 05, right: 05,
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
                                MaterialPageRoute(
                                  builder: (context) => LoadDetailRejected(
                                    loadingheader: loadingheaders[index],
                                  ),
                                ),
                              );
                            },
                            horizontalTitleGap: 10,
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: const Color(0xffEC9696),
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
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: RichText(
                                  text: TextSpan(
                                      text:
                                          "${loadingheaders[index].rotName} | ",
                                      style: subTitleTextStyle(),
                                      children: [
                                    TextSpan(
                                        text: "${loadingheaders[index].date}",
                                        style: subTitleTextStyle()),
                                  ])),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 0, right: 0, top: 05
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
          loadingHeaderFailedState: () => Center(
            child: Text(
              'No Data Available',
              style: kfontstyle(),
            ),
          ),
        );
      },
    );
  }
}
