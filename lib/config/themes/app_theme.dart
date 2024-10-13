import 'package:flutter/material.dart';
import 'package:supa/config/colors/app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.bgColor,
      brightness: Brightness.light,
      fontFamily: 'NotoSansJP',
      inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide.none),
          hintStyle:
              TextStyle(color: Color.fromARGB(255, 104, 104, 104), fontWeight: FontWeight.w400,fontFamily: 'OpenSans'),
          filled: false,
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.red,
                width: 1,
              )),
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: AppColors.primary,
            textStyle: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
      ));
}
