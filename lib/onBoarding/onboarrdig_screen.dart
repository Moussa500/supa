import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/onBoarding/pages/first_page.dart';
import 'package:supa/onBoarding/pages/second_page.dart';
import 'package:supa/onBoarding/provider/on_boarding_provider.dart';
import 'package:supa/onBoarding/widgets/buttons.dart';

class OnboarrdigScreen extends StatelessWidget {
  const OnboarrdigScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnBoardingProvider(),
      child: Scaffold(
        appBar: CustomAppbar(
          hideBack: true,
          title: SvgPicture.asset(AppVectors.secondaryLogo),
        ),
        body: Consumer<OnBoardingProvider>(
          builder: (context, onBoardNotifier, child) {
            return Column(
              children: [
                Expanded(
                  child: PageView(
                    onPageChanged: (value) {
                      onBoardNotifier.updateState();
                    },
                    controller: onBoardNotifier.pageController,
                    physics: onBoardNotifier.isLastPage
                        ? const NeverScrollableScrollPhysics()
                        : const AlwaysScrollableScrollPhysics(),
                    children: const [
                      FirstPage(),
                      SecondPage(),
                    ],
                  ),
                ),
                const HieghtSpacer(size: 59),
                SmoothPageIndicator(
                  controller: onBoardNotifier.pageController,
                  count: 2,
                  effect: const WormEffect(activeDotColor: AppColors.primary),
                  axisDirection: Axis.horizontal,
                ),
                const HieghtSpacer(size: 59),
                Buttons(
                    label:
                        onBoardNotifier.isLastPage ? "Get Started" : "Continue",
                    ontap: onBoardNotifier.isLastPage
                        ? () {
                            Navigator.pushNamed(context, '/register');
                          }
                        : onBoardNotifier.goForward)
              ],
            );
          },
        ),
      ),
    );
  }
}
