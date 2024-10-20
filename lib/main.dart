import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:supa/app.dart';
import 'package:supa/bottom_navigation_bar/presentation/custom_bottom_navigation_bar.dart';
import 'package:supa/features/menu/presentation/bloc/menu/menu_bloc.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_cubit.dart';
import 'package:supa/onBoarding/provider/on_boarding_provider.dart';
import 'package:supa/service_locator.dart';
import 'package:supa/splash/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  initializeDependencies();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => OnBoardingProvider(),
      ),
    ],
    child: MultiBlocProvider(
      providers: [
        BlocProvider<MenuBloc>(
          create: (context) => MenuBloc()..loadProducts(),
        ),
        BlocProvider<CartBloc>(
          create: (context) => CartBloc()..loadCart(),
        ),
      ],
      child: const MyApp(),
    ),
  ));
}
