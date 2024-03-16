import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/view/editprofile/widgets/editfieldwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

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
          "Edit Profile",
          style: appHeading(),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            EditProfilefieldWidget(
              title: 'Mail ID',
              icon: 'assets/svg/mail.svg',
            ),
            EditProfilefieldWidget(
              title: 'Mobile Number',
              icon: 'assets/svg/phone.svg',
            ),
            EditProfilefieldWidget(
              title: 'Whatsapp Number',
              icon: 'assets/svg/whatsapp_1.svg',
            )
          ],
        ),
      ),
      bottomNavigationBar: Card(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        shadowColor: Colors.grey,
        child: SizedBox(
          height: 50.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(color: Colors.grey)),
                    // minWidth: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'Cancel',
                      style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    color: const Color(0xff7abc77),
                    // minWidth: MediaQuery.of(context).size.width / 2,
                    child: Text(
                      'Update',
                      style: kfontstyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
