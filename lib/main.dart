import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:supa/app.dart';
import 'package:supa/bottom_navigation_bar/presentation/custom_bottom_navigation_bar.dart';
import 'package:supa/features/menu/presentation/bloc/order_bloc.dart';
import 'package:supa/features/menu/presentation/pages/detail.dart';
import 'package:supa/onBoarding/provider/on_boarding_provider.dart';
import 'package:supa/splash/splash.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => OnBoardingProvider(),
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider<OrderBloc>(
          create: (context) => OrderBloc(),
        ),
      ],
      child: const MyApp(),
    ),
  ));
}
