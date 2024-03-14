import 'package:customer_connect/feature/view/totalorders/totalorderdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TotalOrderList extends StatelessWidget {
  const TotalOrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TotalOrderDetails()));
                },
                child: SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 315,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              child: Image.asset(
                                "assets/images/listicon.png",
                                height: 20,
                              ),
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'AD025206',
                                      style: TextStyle(
                                          color: Color(0xff2C6B9E),
                                          fontSize: 11),
                                    ),
                                    Text(
                                      '- Tromp, Muller and Mitchell',
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                                Text(
                                  '199521 - Carrefour Hypermarket',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Route 101 | Salesman 101 | 16 May 2023 1 | 10:35',
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 20,
                        width: 25,
                        decoration: BoxDecoration(
                          color: const Color(0xffECEFBE),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                            child: Text(
                          'QN',
                          style: TextStyle(fontSize: 11),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider()
            ],
          );
        },
        //separatorBuilder: (context, index) => Divider(),
        itemCount: 3);
  }
}
