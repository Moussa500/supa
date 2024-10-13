import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/bottom_navigation_bar/presentation/custom_bottom_navigation_bar.dart';
import 'package:supa/config/themes/app_theme.dart';
import 'package:supa/features/auth/presentation/pages/login_page.dart';
import 'package:supa/features/auth/presentation/pages/register_page.dart';
import 'package:supa/features/menu/presentation/pages/detail.dart';
import 'package:supa/onBoarding/onboarrdig_screen.dart';
import 'package:supa/splash/splash.dart';

class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.theme,
        initialRoute: "/navigator",
        routes: {
          '/navigator': (_) => CustomBottomNavigationBar(),
          "/splash": (_) => const Splash(),
          "register": (_) => RegisterPage(),
          "/login": (_) => LoginPage(),
          "/details": (_) => Detail(),
          "/onBoarding": (_) => OnboarrdigScreen(),
          "/card": (_) => Card(),
        },
      ),
    );
  }
}
