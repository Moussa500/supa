import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/assets/app_images.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';

class Offer extends StatelessWidget {
  const Offer({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Stack(
          children: [
            Positioned(
              left: 9.w,
              top: 12.h,
              child: Container(
                width: 352.w,
                height: 132.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  color: AppColors.darkGreen,
                ),
              ),
            ),
            Positioned(
              child: Container(
                width: 370.w,
                height: 132.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16.r)),
                  color: AppColors.primary,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 7.h, bottom: 5.h, right: 50.w, left: 24.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: FittedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Buy One \nGet One FREE",
                            style: AppStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 24,
                                fontColor: Colors.white),
                          ),
                          HieghtSpacer(size: 12.h),
                          SizedBox(
                              height: 42.h,
                              width: 139.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                child: Text(
                                  "Order Now",
                                  style: AppStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 17,
                                      fontColor: AppColors.primary),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 252.w,
              top: 32.h,
              bottom: 8.h,
              right: 10.w,
              child: Image.asset(
                AppImages.offerImage,
                height: 108.h,
                width: 108.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
