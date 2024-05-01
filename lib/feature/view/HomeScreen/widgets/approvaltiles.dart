import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:customer_connect/feature/view/pricechangeapproval/pricechangeheader.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/creditnote/creditnoteheaderscreen.dart';
import 'package:customer_connect/feature/view/disputenote/disputenoteapprovalheader.dart';
import 'package:customer_connect/feature/view/returnapproval/returnapprovalheader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApprovalTiles extends StatelessWidget {
  final LoginUserModel user;
  const ApprovalTiles({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Approvals",
                style: boxHeading(),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReturnApprovalHeader(
                          user: user,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    //height: 50,
                    // width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/customer.png",
                            height: 15.h,
                          ),
                          // SvgPicture.asset("assets/images/os.png",height: 20,
                          //   fit: BoxFit.scaleDown,),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Return",
                            style: headTextStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: InkWell(
                  onTap: () {
                    context
                        .read<PriceChangeHeaderBloc>()
                        .add(const ClearPriceChangeHeader());
                    context
                        .read<PriceChangeHeaderBloc>()
                        .add(const GetPriceChangeHeaderEvent(rotID: '46'));
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PriceChangeHeader()));
                  },
                  child: Container(
                    // height: 50,
                    // width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/file.png",
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Price Change",
                            style: headTextStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DisputeNoteApprovalHEaderScreen(
                                  user: user,
                                )));
                  },
                  child: Container(
                    // height: 50,
                    // width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/pro.png",
                            height: 15.h,
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Dispute Note",
                            style: headTextStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreditNoteHeaderScreen(
                          user: user,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    //height: 50,
                    // width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              spreadRadius: 1,
                              blurRadius: 1)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/images/os.png",
                            height: 15.h,
                          ),
                          // fit: BoxFit.scaleDown,),
                          SizedBox(
                            width: 8.w,
                          ),
                          Text(
                            "Credit Note",
                            style: headTextStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
