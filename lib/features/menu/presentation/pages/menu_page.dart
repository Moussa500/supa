import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/custom_text_field.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/features/menu/presentation/widgets/featured_menu.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppbar(
          hideBack: true,
          title: Text(
            "Menu",
            style: AppStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontColor: Colors.black),
          ),
          action: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextfield(
                  radius: 16,
                  hintText: "SEARCH ALL PRODUCTS",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
               HieghtSpacer(size: 32),
               FeaturedMenu(),
            ],
          ),
        ),
      ),
    );
  }
  Row section(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        header(label),
        SvgPicture.asset(AppVectors.roundedArrowBack),
      ],
    );
  }

  Text header(String label) => Text(
        label,
        style: AppStyle(
            fontWeight: FontWeight.w700, fontSize: 20, fontColor: Colors.black),
      );
}
