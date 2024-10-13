import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  final Color color;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.label,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          backgroundColor: color,
          minimumSize: Size(MediaQuery.of(context).size.width * .8, 44.h)),
      onPressed: onTap,
      child: Text(
        label,
        style: AppStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
            fontColor:
                color == AppColors.primary ? Colors.white : AppColors.primary),
      ),
    );
  }
}
