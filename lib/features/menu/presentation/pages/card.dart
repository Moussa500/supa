import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/features/menu/presentation/bloc/order_bloc.dart';
import 'package:supa/features/menu/presentation/widgets/card_items.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: Text(
          "AppBarr",
          style: AppStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontColor: Colors.black),
        ),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          print(state.items);
          return const Column(
            children: [
              CardItems(),
            ],
          );
        },
      ),
    );
  }
}
