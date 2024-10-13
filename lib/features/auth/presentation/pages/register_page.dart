import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/custom_button.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/features/auth/presentation/widgets/input_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 20.w),
                child: Text(
                  "Sign Up",
                  style: AppStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      fontColor: Colors.black),
                ),
              ),
              const HieghtSpacer(size: 6),
              Padding(
                padding:  EdgeInsets.only(left: 20.w),
                child: Text(
                  "create your account",
                  style: AppStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontColor: Colors.grey),
                ),
              ),
              const HieghtSpacer(size: 32),
              const InputForm(),
              const HieghtSpacer(size: 49),
              const Text("Forget Password"),
              const HieghtSpacer(size: 39),
              CustomButton(
                  onTap: () {}, label: "Register", color: AppColors.primary),
              const HieghtSpacer(size: 32),
              Center(child: signIn()),
              const HieghtSpacer(size: 80),
              Center(
                child: Text(
                  "By clicking Register, you agree to our",
                  style: AppStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontColor: AppColors.drakGrey),
                ),
              ),
              Center(
                child: Text(
                  "Terms and Data Policy",
                  style: AppStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      fontColor: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row signIn() {
    return Row(
      children: [
        Text(
          "Have an account? ",
          style: AppStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontColor: AppColors.drakGrey),
        ),
        Text(
          "Sign In",
          style: AppStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontColor: AppColors.primary),
        ),
      ],
    );
  }
}
