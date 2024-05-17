import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/view/asset_adding/assetaddingheaderscreen.dart';
import 'package:customer_connect/feature/view/assetremoval/assetremovalscreen.dart';
import 'package:customer_connect/feature/view/creditnote/creditnoteheaderscreen.dart';
import 'package:customer_connect/feature/view/disputenote/disputenoteapprovalheader.dart';
import 'package:customer_connect/feature/view/fieldserviceinvoice/fieldserviceinoice.dart';
import 'package:customer_connect/feature/view/journeyplan/journeyplanheaderscreen.dart';
import 'package:customer_connect/feature/view/loadtransfer/loadtransferheaderscreen.dart';
import 'package:customer_connect/feature/view/partialdelivery/partialdeliveryheader.dart';
import 'package:customer_connect/feature/view/pricechangeapproval/pricechangeheader.dart';
import 'package:customer_connect/feature/view/returnapproval/returnapprovalheader.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:customer_connect/feature/view/vantovanapproval/vantovanapprovalheader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApprovalScreen extends StatelessWidget {
  final LoginUserModel user;
  const ApprovalScreen({super.key, required this.user});

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
          "Approvals",
          style: appHeading(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 5, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
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
                                builder: (context) => PriceChangeHeader(
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
                                "assets/images/pc.png",
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
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PartialDeliveryHeader(
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
                                "assets/images/pd.png",
                                height: 15.h,
                              ),
                              // fit: BoxFit.scaleDown,),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Partial Delivery",
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
                            builder: (context) => ScheduledReturnHEaderScreen(
                              user: user,
                            ),
                          ),
                        );
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
                                "assets/images/sr.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Scheduled Return",
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
                                "assets/images/rtn.png",
                                height: 15.h,
                              ),
                              // fit: BoxFit.scaleDown,),
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
                                "assets/images/dr.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Dispute Request",
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
                                "assets/images/cr.png",
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
                                AssetAddingApprovalHeaderScreen(
                              user: user,
                            ),
                          ),
                        );
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
                                "assets/images/aa.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Asset Adding",
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
                            builder: (context) => AssetRemovalApprovalScreen(
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
                                "assets/images/aa.png",
                                height: 15.h,
                              ),
                              // fit: BoxFit.scaleDown,),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Asset Removal",
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
                        context
                            .read<VanToVanHeaderBloc>()
                            .add(const getVanToVanHeaderEvent(userID: '48'));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const VanToVanApprovalHeader(),
                          ),
                        );
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
                                "assets/images/vv.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "VanTo Van",
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
                            builder: (context) =>
                                LoadTransferApprovalHeaderScreen(
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
                                "assets/images/lt.png",
                                height: 15.h,
                              ),
                              // fit: BoxFit.scaleDown,),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Load Transfer",
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
                            builder: (context) => JourneyPlanHeaderScreen(
                              user: user,
                            ),
                          ),
                        );
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
                                "assets/images/jp.png",
                                height: 15.h,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Journey Plan",
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
                        context.read<FieldServiceHeaderBloc>().add(
                            const GetAllFieldServiceHeadersEvent(userId: '64'));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FieldServiceInvoiceHeader(
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
                                "assets/images/fs.png",
                                height: 15.h,
                              ),
                              // fit: BoxFit.scaleDown,),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                "Field Service Invoice",
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
        ),

        /*Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  
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
              SizedBox(
                height: 10.w,
              ),
              
              
              GestureDetector(
                onTap: () {
                  
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
              SizedBox(
                height: 10.w,
              ),
              InkWell(
                onTap: () {
                 
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
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                 
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
                          "Scheduled Return",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AssetAddingApprovalHeaderScreen(
                        user: user,
                      ),
                    ),
                  );
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
                          "Asset Adding",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  
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
                          "Asset Removal",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              
              GestureDetector(
                onTap: () {
                  
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
                          "Field Service Invoice",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  context
                      .read<VanToVanHeaderBloc>()
                      .add(const getVanToVanHeaderEvent(userID: '49'));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VanToVanApprovalHeader(),
                    ),
                  );
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
                          "Van To Van Approval",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  
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
                          "Load Transfer",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  
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
                          "Journey Plan",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.w,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MaterialRequestHeaderScreen(
                        user: user,
                      ),
                    ),
                  );
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
                          "Material Request",
                          style: headTextStyle(),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),*/
      ),
    );
  }
}
