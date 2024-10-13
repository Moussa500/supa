import 'package:flutter/material.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_text_field.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';

class LoginInputForm extends StatelessWidget {
  const LoginInputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HieghtSpacer(size: 16),
        header("Email"),
        const HieghtSpacer(size: 7),
        const CustomTextfield(hintText: "Your email"),
        const HieghtSpacer(size: 16),
        header("Password"),
        const HieghtSpacer(size: 7),
        const CustomTextfield(hintText: "Your password"),
      ],
    );
  }
  Text header(String label) => Text(
        label,
        style: AppStyle(
            fontWeight: FontWeight.w500, fontSize: 18, fontColor: Colors.black),
      );
}
