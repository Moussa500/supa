import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HieghtSpacer extends StatelessWidget {
  final double size;
  const HieghtSpacer({super.key,required this.size});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.h,
    );
  }
}