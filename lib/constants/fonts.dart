import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle boxHeading() {
  return GoogleFonts.inter(
      fontSize: 12,fontWeight: FontWeight.w400,
      color:const Color(0xff413434));
}

TextStyle blueTextStyle() {
  return GoogleFonts.inter(
      fontSize: 14,fontWeight: FontWeight.w500,
      color: const Color(0xff2C6B9E));
}
TextStyle appHeading() {
  return GoogleFonts.inter(
      fontSize: 18,fontWeight: FontWeight.w400,
      color: const Color(0xff413434));
}

TextStyle countHeading() {
  return GoogleFonts.inter(
      fontSize: 13,fontWeight: FontWeight.w500,
      color: const Color(0xff413434));
}

TextStyle statusTextStyle() {
  return GoogleFonts.inter(
      fontSize: 10,
      //fontWeight: FontWeight.w500,
      color: Colors.grey);
}



TextStyle subTextStyle() {
  return GoogleFonts.inter(
      fontSize: 9, //fontWeight: FontWeight.w500,
      color: Colors.grey);
}

TextStyle subTitleTextStyle() {
  return GoogleFonts.inter(
      fontSize: 12, //fontWeight: FontWeight.w500,
      color: const Color(0xff413434));
}


TextStyle headTextStyle() {
  return GoogleFonts.inter(
      fontSize: 10, fontWeight: FontWeight.w500,
      color: const Color(0xff413434));

}
