import 'package:flutter/material.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/custom_button.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';

class Buttons extends StatelessWidget {
  final String label;
  final void Function()? ontap;

  const Buttons({super.key, required this.label, required this.ontap});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(onTap: ontap, label: label, color: AppColors.primary),
        const HieghtSpacer(size: 14),
        CustomButton(
            onTap: () => Navigator.pushNamed(context, '/login'),
            label: "SIGN IN",
            color: Colors.white)
      ],
    );
  }
}
