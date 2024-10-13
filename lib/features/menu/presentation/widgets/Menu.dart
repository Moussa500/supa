import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/core/common/widgets/width_spacer.dart';
import 'package:supa/core/dummy_data/dummy_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 330.h,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData.menuList.length,
            separatorBuilder: (context, index) => WidthSpacer(size: 24.w),
            itemBuilder: (context, index) {
              return SizedBox(
                height: 280.h,
                width: 220.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.r))),
                      width: 220.w,
                      height: 155.h,
                      child: Image.asset(
                        DummyData.menuList[index].image!,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HieghtSpacer(size: 10),
                    Text(
                      DummyData.menuList[index].name!,
                      style: AppStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontColor: Colors.black),
                    ),
                    const HieghtSpacer(size: 10),
                    Row(
                      children: [
                        Text(
                          DummyData.menuList[index].rating!.toString(),
                          style: AppStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontColor: Colors.black),
                        ),
                        const Icon(
                          size: 20,
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          "(${DummyData.menuList[index].ratersNumber!.toString()})",
                          style: AppStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontColor: Colors.black),
                        )
                      ],
                    ),
                    const HieghtSpacer(size: 10),
                    Text(
                      "${DummyData.menuList[index].price}\$",
                      style: AppStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontColor: AppColors.primary),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
