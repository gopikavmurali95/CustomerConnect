
import 'package:flutter/material.dart';

import '../../../../constants/fonts.dart';

class SpPrHeaderList extends StatelessWidget {
  const SpPrHeaderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(
        left: 05, right: 05,
        //top: 10,
        //  bottom: 10
      ),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              height: 60,
              color: Colors.white,
              child: ListTile(

                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const LoadDetailPending(),
                  //   ),
                  // );
                },
                titleAlignment: ListTileTitleAlignment.center,
                minVerticalPadding:5,
                minLeadingWidth: 50,
                //titleAlignment:ListTileTitleAlignment.center,
                horizontalTitleGap: 10,
                leading: Padding(
                  padding: const EdgeInsets.only(bottom:5.0,),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xffA4C8E9),
                    child: Image.asset(
                      "assets/images/listicon.png",
                      height: 20,
                    ),
                  ),
                ),
                title: Text(
                  "Special Pricing 0${index+1}",
                  style: blueTextStyle(),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(bottom: 10.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("21 Feb 2021 to 24 Feb 2024 ",style:subTitleTextStyle(),),
                      Text("PR12001",style: subTitleTextStyle(),)
                    ],
                  )
                ),
                trailing: const Text("Details   >",style: TextStyle(
                  fontSize: 10,color: Colors.grey
                ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 05
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
