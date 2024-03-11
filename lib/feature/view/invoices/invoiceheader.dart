import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/invoices/widgets/invoiceheaderlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InvoiceHeaderScreen extends StatelessWidget {
  const InvoiceHeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Invoices ",
          style: appHeading(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/svg/filter.svg",
              height: 20,
              fit: BoxFit.scaleDown,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size(100, 50),
          child: Padding(
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
                      hintText: "Search invoices",
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
        ),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //SizedBox(width: 05,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Text(
                  "All invoices",
                  style: countHeading(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
                child: Text(
                  "80",
                  style: countHeading(),
                ),
              ),
              // SizedBox(width: ,),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Expanded(child: InvoiceHeaderListWidget())
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 3,
              color: Colors.black12,
              blurStyle: BlurStyle.outer,
              offset: Offset(3, 3))
        ]),
        height: 40.h,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total Invoice Amount',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                '1200.00',
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
