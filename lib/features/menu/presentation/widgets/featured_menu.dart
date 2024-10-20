import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/core/dummy_data/dummy_data.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';
import 'package:supa/features/menu/presentation/pages/detail.dart';

class FeaturedMenu extends StatefulWidget {
  const FeaturedMenu({super.key});

  @override
  State<FeaturedMenu> createState() => _FeaturedMenuState();
}

class _FeaturedMenuState extends State<FeaturedMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.8,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 0.6,
            mainAxisSpacing: 10,
          ),
          padding: const EdgeInsets.all(16),
          itemCount: 4,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/details',
                  arguments: CardItem(
                      product: DummyData.featuredmenuList[index], quantity: 1)),
              child: SizedBox(
                height: 280,
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
                        DummyData.featuredmenuList[index].image!,
                        fit: BoxFit.fill,
                      ),
                    ),
                    const HieghtSpacer(size: 10),
                    Text(
                      DummyData.featuredmenuList[index].name!,
                      style: AppStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontColor: Colors.black),
                    ),
                    const HieghtSpacer(size: 10),
                    Row(
                      children: [
                        Text(
                          DummyData.featuredmenuList[index].rating!.toString(),
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
                          "(${DummyData.featuredmenuList[index].ratersNumber!.toString()})",
                          style: AppStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontColor: Colors.black),
                        )
                      ],
                    ),
                    const HieghtSpacer(size: 10),
                    Text(
                      "${DummyData.featuredmenuList[index].price}\$",
                      style: AppStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          fontColor: AppColors.primary),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
