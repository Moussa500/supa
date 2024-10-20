import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_cubit.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_state.dart';
import 'package:supa/features/menu/presentation/widgets/card_items.dart';

class OrdersCard extends StatelessWidget {
  const OrdersCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        hideBack: true,
        title: Text(
          "AppBarr",
          style: AppStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontColor: Colors.black),
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          if (state is CartLoaded) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Your Order",
                          style: AppStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontColor: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(
                              context, '/navigator',
                              arguments: 1),
                          child: Text(
                            "See menu",
                            style: AppStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                fontColor: AppColors.primary),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const CardItems(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                          height: 54.h,
                          width: 165.w,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffEFEFEF)),
                              onPressed: () {},
                              child: Text("+ Add items",
                                  style: AppStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      fontColor: Colors.black)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        fields(
                            "Subtotal",
                            "${state.items.subTotal.toStringAsFixed(2)}\$",
                            Colors.black),
                        const HieghtSpacer(size: 15),
                        fields("Promotion", "${state.items.promotion.toStringAsFixed(2)}\$",
                            AppColors.primary),
                        const HieghtSpacer(size: 15),
                        fields("Delivery Fee", "${state.items.deliveryFee.toStringAsFixed(2)}\$",
                            Colors.black),
                        const HieghtSpacer(size: 15),
                        fields("Taxes&Other Fees", "${state.items.taxes.toStringAsFixed(2)}\$",
                            Colors.black),
                        const HieghtSpacer(size: 15),
                        fields("Total", "${state.items.total.toStringAsFixed(2)}\$",
                            AppColors.primary),
                        const HieghtSpacer(size: 15),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: Text("Your card is empty"),
            );
          }
        },
      ),
    );
  }

  Row fields(String fieldName, String value, Color color) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          fieldName,
          style: AppStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              fontColor: Colors.black),
        ),
        Text(
          value,
          style: AppStyle(
              fontWeight: FontWeight.w600, fontSize: 18, fontColor: color),
        ),
      ],
    );
  }
}
