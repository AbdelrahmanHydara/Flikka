import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFonts {
  static TextStyle get font22White => GoogleFonts.fredoka(
    color: Colors.white,
    fontSize: 22.sp,
      );

  static TextStyle get font18White => GoogleFonts.fredoka(
    color: Colors.white,
    fontSize: 18.sp,
      );

  static TextStyle get font16WhiteFaded => GoogleFonts.fredoka(
    color: Colors.white.withOpacity(.8),
    fontSize: 16.sp,
      );
  static TextStyle get font16GreyFaded => GoogleFonts.fredoka(
    color: Colors.grey.withOpacity(.4),
    fontSize: 16.sp,
      );

}