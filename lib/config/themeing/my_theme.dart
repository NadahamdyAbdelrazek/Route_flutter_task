import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_task/core/utils/app_colors.dart';

class MyThemeData{
  static Color primarycolor = AppColors.blueColor;
  static Color lightcolor = Colors.white;
  static ThemeData Lighttheme=ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
    ),
    iconTheme: IconThemeData(
      color: primarycolor,
      size: 30.sp,

    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColors.blueColor),
      bodyMedium: TextStyle(
          fontSize: 15.sp,
          color: AppColors.blueColor,
          decoration: TextDecoration.lineThrough,
          decorationColor: Color(0xff004182),decorationThickness: 2),
      bodySmall: TextStyle(
          color: Color(0xff06004F),
          fontSize: 14.sp,
          fontWeight: FontWeight.w300)
    ),

  );




}