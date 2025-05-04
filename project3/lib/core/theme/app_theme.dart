import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3/core/text/text_styles.dart';
import 'package:project3/core/theme/app_palette.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AppPalette.backgroundColor,
    appBarTheme: AppBarTheme(backgroundColor: AppPalette.whiteColor),

    //text Theme
    textTheme: GoogleFonts.robotoTextTheme(),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.only(top: 20.h, bottom: 19.h, left: 31.w),
      filled: true,
      hintStyle: TextStyles.roboto700,
      fillColor: AppPalette.whiteColor,
      enabledBorder: _border(),
      focusedBorder: _border(),
    ),
    //elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppPalette.orangeColor),
        fixedSize: WidgetStateProperty.all(Size(316.w, 58.h)),
        textStyle: WidgetStateProperty.all(TextStyles.roboto24),
        foregroundColor: WidgetStateProperty.all(AppPalette.whiteColor),
      ),
    ),
    
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: AppPalette.grayColor,
      selectedItemColor: Colors.red,
    ),

    cardTheme: CardThemeData(
      color: AppPalette.cardColor,
      // margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
    ),
  );

  //OutlineInputBorder
  static OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(25.r),
      borderSide: BorderSide(color: AppPalette.whiteColor),
    );
  }
}
