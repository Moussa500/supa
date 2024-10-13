import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';

class OtherWaysToLogIn extends StatelessWidget {
  const OtherWaysToLogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          myButton(context, AppVectors.googleLogo, "Sign In with Google", () {}),
          const HieghtSpacer(size: 16),
          myButton(context, AppVectors.appleLogo, "Sign In with Apple", () {}),
        ],
      ),
    );
  }
  ElevatedButton myButton(
      BuildContext context, String icon, String label, void Function()? onTap) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.black,width: 1),
            borderRadius: BorderRadius.all(Radius.circular(20.r)),
          ),
          backgroundColor: Colors.white,
          minimumSize: Size(MediaQuery.of(context).size.width * .7, 50.h)),
      onPressed: onTap,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon),
            Text(
              label,
              style: AppStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontColor: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
