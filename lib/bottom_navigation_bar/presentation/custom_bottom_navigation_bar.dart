import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supa/bottom_navigation_bar/bloc/bottom_navigation_bar_bloc.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/features/menu/presentation/pages/card.dart';
import 'package:supa/features/menu/presentation/pages/home_page.dart';
import 'package:supa/features/menu/presentation/pages/menu_page.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({
    super.key,
  });
  final List<Widget> items = [
    const HomePage(),
    const MenuPage(),
    const OrdersCard(),
    const Placeholder(),
  ];
  @override
  Widget build(BuildContext context) {
    int? index = ModalRoute.of(context)!.settings.arguments as int?;
    return BlocProvider<BottomNavigationBarBloc>(
      create: (context) => BottomNavigationBarBloc(),
      child: BlocBuilder<BottomNavigationBarBloc, BottomNavigationBarState>(
        builder: (context, state) {
          if (index != null) {
            context
                .read<BottomNavigationBarBloc>()
                .add(PageTapped(index: index!));
          }
          index=null;
          return Scaffold(
            body: items[state.selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.drakGrey,
                onTap: (index) => context
                    .read<BottomNavigationBarBloc>()
                    .add(PageTapped(index: index)),
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home,
                          color: state.selectedIndex == 0
                              ? Colors.green
                              : AppColors.drakGrey),
                      label: 'Home'
                      ),
                  BottomNavigationBarItem(
                        label: 'Menu',
                      icon: Icon(Icons.list_alt,
                          color: state.selectedIndex == 1
                              ? AppColors.primary
                              : AppColors.drakGrey),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_sharp,
                        color: state.selectedIndex == 2
                            ? AppColors.primary
                            : AppColors.drakGrey),
                    label: 'Card',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                        color: state.selectedIndex == 3
                            ? AppColors.primary
                            : AppColors.drakGrey,
                      ),
                      label: 'Profile'),
                ]),
          );
        },
      ),
    );
  }
}
