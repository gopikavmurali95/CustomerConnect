import 'package:customer_connect/constants/fonts.dart';
import 'package:flutter/material.dart';

class TodaysDeliveryDetailsList extends StatelessWidget {
  const TodaysDeliveryDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, top: 2),
                  child: SizedBox(
                    height: 70,
                    width: 200,
                    //color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("400478754", style: loadTextStyle()),
                        Text(
                          "Divella Farfelle  Pasta 500g",
                          style: subTitleTextStyle(),
                        ),
                        Text(
                          "Offer Pack",
                          style: subTitleTextStyle(),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cs",
                      style: subTitleTextStyle(),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Cs",
                      style: subTitleTextStyle(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "1",
                        style: subTitleTextStyle(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "1",
                        style: subTitleTextStyle(),
                      ),
                    ],
                  ),
                ),
                //  SizedBox(width: 0,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 20,
                    width: 65,
                    decoration: BoxDecoration(
                        color: const Color(0xFFECEFBE),
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AED ',
                          style: TextStyle(fontSize: 10),
                        ),
                        Text(
                          '34.00',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
            //  Divider(),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(left: 15.0, right: 10),
          child: Divider(),
        );
      },
    );
  }
}
