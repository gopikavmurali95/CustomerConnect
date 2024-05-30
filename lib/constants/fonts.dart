import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logger/web.dart';

TextStyle boxHeading() {
  return GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: const Color(0xff413434));
}

TextStyle blueTextStyle() {
  return GoogleFonts.poppins(
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: const Color(0xff2C6B9E));
}

TextStyle appHeading() {
  return GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: const Color(0xff413434));
}

TextStyle countHeading() {
  return GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xff413434));
}

TextStyle statusTextStyle() {
  return GoogleFonts.poppins(
      fontSize: 9.sp,
      //fontWeight: FontWeight.w500,
      color: const Color(0xff5D5D5D));
}

TextStyle subTextStyle() {
  return GoogleFonts.poppins(
      fontSize: 9.sp, //fontWeight: FontWeight.w500,
      color: Colors.grey);
}

TextStyle subTitleTextStyle() {
  return GoogleFonts.poppins(
      fontSize: 12, //fontWeight: FontWeight.w500,
      color: const Color(0xff413434));
}

TextStyle headTextStyle() {
  return GoogleFonts.poppins(
      fontSize: 9.sp,
      fontWeight: FontWeight.w500,
      color: const Color(0xff413434));
}

const kfontstyle = GoogleFonts.poppins;
TextStyle loadTextStyle() {
  return GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xff6E62A4));
}

Logger logger = Logger();
