import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/custom_button.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/features/auth/presentation/widgets/input_form.dart';
import 'package:supa/features/auth/presentation/widgets/login_input_form.dart';
import 'package:supa/features/auth/presentation/widgets/other_ways_to_log_in.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Text(
                "Welcome",
                style: AppStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontColor: Colors.black),
              ),
            ),
            const HieghtSpacer(size: 6),
            Padding(
              padding: EdgeInsets.only(left: 40.w),
              child: Text(
                "Sign In to your account",
                style: AppStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontColor: Colors.grey),
              ),
            ),
            const HieghtSpacer(size: 32),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 21.w),
              child: const LoginInputForm(),
            ),
            const HieghtSpacer(size: 49),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 21.w),
              child: Text(
                "Forget Password",
                style: AppStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontColor: AppColors.primary),
              ),
            ),
            const HieghtSpacer(size: 39),
            Center(
              child: CustomButton(
                  onTap: () {}, label: "Login", color: AppColors.primary),
            ),
            const HieghtSpacer(size: 32),
            Center(child: register()),
            const HieghtSpacer(size: 32),
            Center(child: otherWaysToLogin()),
          ],
        ),
      ),
    );
  }

  Row register() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: AppStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontColor: AppColors.drakGrey),
        ),
        Text(
          "Sign Up",
          style: AppStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontColor: AppColors.primary),
        ),
      ],
    );
  }

  Column otherWaysToLogin() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              AppVectors.lineOne,
              width: 181.w,
            ),
            Text(
              "Or with",
              style: AppStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontColor: AppColors.grey),
            ),
            SvgPicture.asset(
              AppVectors.lineOne,
              width: 181.w,
            ),
          ],
        ),
        const HieghtSpacer(size: 25),
        const OtherWaysToLogIn(),
      ],
    );
  }
}
