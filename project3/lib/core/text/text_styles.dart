import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3/core/theme/app_palette.dart';

class TextStyles {
  //Ribeye Font
  static final ribeyeStyle = GoogleFonts.ribeye(
    textStyle: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 40.sp,
      height: 1.0,
    ),
  );
  //Roboto Font
  static final roboto700 = GoogleFonts.roboto(
    color: AppPalette.hintColor,
    fontSize: 18.sp,
    height: 1.0,
    fontWeight: FontWeight.w700,
  );

  static final roboto24 = GoogleFonts.roboto(
    color: AppPalette.whiteColor,
    fontSize: 24.sp,
    height: 1.0,
    fontWeight: FontWeight.w700,
  );
  static final roboto600 = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppPalette.blueColor2,
    height: 1.0,
  );
  static final roboto15w600 = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppPalette.grayColor,
    height: 1.0,
  );

  static final roboto500 = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeight.w500,
    color: AppPalette.blackColor,
    height: 1.0,
  );

  static final roboto400 = GoogleFonts.roboto(
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
    color: AppPalette.blackColor,
    height: 1.0,
  );

  static final roboto25 = GoogleFonts.roboto(
    fontSize: 25.sp,
    fontWeight: FontWeight.w400,
    color: AppPalette.blackColor,
    height: 1.0,
  );
  static final roboto20 = GoogleFonts.roboto(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppPalette.hintColor,
    height: 1.0,
  );
  static final roboto15 = GoogleFonts.roboto(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: AppPalette.blackColor,
    height: 1.0,
  );
}
