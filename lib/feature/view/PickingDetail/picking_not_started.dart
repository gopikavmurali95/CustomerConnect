import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:customer_connect/feature/view/PickingDetail/widgets/notstarted_detail.dart';
import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';

class PickingDetailNotStarted extends StatefulWidget {
  final PickingOutModel picking;
  const PickingDetailNotStarted({super.key, required this.picking});
  @override
  State<PickingDetailNotStarted> createState() =>
      _PickingDetailNotStartedState();
}

class _PickingDetailNotStartedState extends State<PickingDetailNotStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          "Picking Detail",
          style: appHeading(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(100, 100),
          child: Column(
            children: [
              ListTile(
                  title: Text(
                    "${widget.picking.pickingNumber}",
                    style: blueTextStyle(),
                  ),
                  subtitle: Text(
                    "${widget.picking.rotCode}",
                    style: subTitleTextStyle(),
                  ),
                  trailing: Container(
                      height: 20,
                      width: 65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xffCFE8FF),
                      ),
                      child: const Center(
                          child: Text(
                        "Not Started",
                        style: TextStyle(fontSize: 10),
                      )))),
              Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, right: 15, bottom: 10),
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
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: "Search Items",
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
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              color: Colors.grey.shade200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 160),
                    child: Text(
                      "Items",
                      style: boxHeading(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Text(
                      "UOM",
                      style: boxHeading(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Text(
                      "Qty",
                      style: boxHeading(),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const NotStartedDetail()
          ],
        ),
      ),
    );
  }
}
