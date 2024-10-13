import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle extends TextStyle {
  AppStyle(
      {required FontWeight fontWeight,
      required double fontSize,
      required Color fontColor})
      : super(fontWeight: fontWeight, fontSize: fontSize.sp, color: fontColor);
}
