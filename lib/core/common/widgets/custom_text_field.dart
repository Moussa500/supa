import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';

class CustomTextfield extends StatelessWidget {
  final String hintText;
  final int? maxLines;
  final String? initialValue;
  final String? textError;
  final bool? obscureText;
  final double? radius;
  final Icon? prefixIcon;
  final void Function(String)? onChanged;
  const CustomTextfield(
      {super.key,
      this.initialValue,
      this.prefixIcon,
      required this.hintText,
      this.maxLines,
      this.radius,
      this.obscureText,
      this.onChanged,
      this.textError});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText ?? false,
        maxLines: maxLines,
        initialValue: initialValue,
        onChanged: onChanged,
        decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                      radius != null ? Radius.circular(radius!) : Radius.zero),
                ),
                filled: true,
                fillColor: AppColors.kgrey,
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 22.83.w,right: 17.w),
                  child: prefixIcon,
                ),
                errorText: textError,
                hintText: hintText,
                hintStyle: AppStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontColor: AppColors.grey))
            .applyDefaults(
          Theme.of(context).inputDecorationTheme,
        ));
  }
}
