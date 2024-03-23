import 'package:customer_connect/feature/view/PickingDetail/picking_ongoing.dart';
import 'package:flutter/material.dart';

import '../../../../constants/fonts.dart';

class OnGoing extends StatelessWidget {
  const OnGoing({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        left: 05, right: 05,
        top: 10,
        //  bottom: 10
      ),
      shrinkWrap: true,
      itemCount: 6,
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
                      builder: (context) => const PickingOgoing(),
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
                    backgroundColor: const Color(0xffBEC363),
                    child: Image.asset(
                      "assets/images/listicon.png",
                      height: 20,
                    ),
                  ),
                ),
                title: Text(
                  "M086765",
                  style: blueTextStyle(),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: RichText(
                      text: TextSpan(
                          text: "Route 101 |",
                          style: subTitleTextStyle(),
                          children: [
                        TextSpan(
                            text: "16 July 2023 |", style: subTitleTextStyle()),
                        TextSpan(text: "10.30", style: subTitleTextStyle())
                      ])),
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
    );
  }
}
