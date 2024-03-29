import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart';
import 'package:customer_connect/feature/view/PickingDetail/picking_not_started.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/fonts.dart';
import '../../../state/bloc/picking_detail/pickingdetail_bloc.dart';

class NotStartedHead extends StatelessWidget {
  const NotStartedHead({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PickingHeaderBloc, PickingHeaderState>(
      builder: (context, state) {
        return state.when(
            getPickingHeaderState: (pickingOut) => pickingOut == null ? const Center(
              child: CupertinoActivityIndicator(
                color: Colors.red,
                radius: 30,
                animating: true,
              ),
            ):
            ListView.builder(
              padding: const EdgeInsets.only(
                left: 05, right: 05,
                top: 10,
                //  bottom: 10
              ),
              shrinkWrap: true,
              itemCount: pickingOut.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: ListTile(
                        onTap: () {
                          context.read<PickingdetailBloc>().add(const ClearPickingDetailevent());
                          context.read<PickingdetailBloc>().add(PickingDetailSuccess(
                              PickingID: pickingOut[index].pickingID!));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PickingDetailNotStarted(picking: pickingOut[index],),
                            ),
                          );
                        },
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
                          "${pickingOut[index].pickingNumber}",
                          style: blueTextStyle(),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: RichText(
                              text: TextSpan(
                                text: "${pickingOut[index].rotCode}",
                                style: subTitleTextStyle(),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 05
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
            pickingheaderFailedState: () => const Center(child: Text("No Data Available"),),);
      },
    );
  }
}
