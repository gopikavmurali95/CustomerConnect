import 'package:flutter/material.dart';

import '../../../constants/fonts.dart';

class LoadDetailPending extends StatelessWidget {
  const LoadDetailPending({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.5,
        leading: const Icon(
          Icons.arrow_back_ios_rounded,
          size: 20,
        ),
        title: Text(
          "Load In Detail",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    "M086765",
                    style: blueTextStyle(),
                  ),
                  subtitle: Text(
                    "Route 101",
                    style: subTitleTextStyle(),
                  ),
                  trailing: Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.yellow.shade100),
                      child: const Center(
                          child: Text(
                        "Pending",
                        style: TextStyle(fontSize: 10),
                      )))),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 0.4,
                              spreadRadius: 0.2)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search deliveries",
                          hintStyle: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                          isDense: true,
                          counterText: "",
                          contentPadding: const EdgeInsets.all(15.0),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none)),
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      maxLength: 20,
                      // controller: _locationNameTextController,
                    )),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.spaceBetween,
                    children: [
                      Text("jhbcjh"),
                      Text("hdsbcjh"),
                      Text("dcbjhb"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("jhbcjh"),
                      Text("hdsbcjh"),
                      Text("dcbjhb"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("jhbcjh"),
                      Text("hdsbcjh"),
                      Text("dcbjhb"),
                    ],
                  )
                ],
              );
            }),
      ),
    );
  }
}
