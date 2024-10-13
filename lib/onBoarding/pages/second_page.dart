import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supa/config/assets/app_images.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.secondOnBoardingImage,
              height: 330.h,
              width: 330.w,
            ),
            const HieghtSpacer(size: 59),
            Text(
              textAlign: TextAlign.center,
              "Get Your Delivery At \nYour Doorstep",
              style: AppStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  fontColor: Colors.black),
            ),
            const HieghtSpacer(size: 9),
            Text(
              textAlign: TextAlign.center,
              "From kitchen To Your Doorstep\n Supa Fresh Super Fast",
              style: AppStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontColor: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
