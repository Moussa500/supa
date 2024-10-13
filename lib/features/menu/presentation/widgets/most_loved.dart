import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/core/common/widgets/width_spacer.dart';
import 'package:supa/core/dummy_data/dummy_data.dart';

class MostLoved extends StatelessWidget {
  const MostLoved({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150.h,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: DummyData.mostLoved.length,
            separatorBuilder: (context, index) => WidthSpacer(size: 24.w),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.circular(16.r))),
                width: 158.w,
                height: 111.h,
                child: Image.asset(
                  DummyData.mostLoved[index],
                  fit: BoxFit.fill,
                ),
              );
            }),
      ),
    );
  }
}
