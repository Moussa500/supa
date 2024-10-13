import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/width_spacer.dart';
import 'package:supa/features/menu/presentation/bloc/order_bloc.dart';

class SharedMethods {
  static SizedBox quantityOfOrders(
      int quantity, double price, BuildContext context) {
    return SizedBox(
      width: 200.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
              onTap: () => context
                  .read<OrderBloc>()
                  .add(DecreaseButtonPressed(quantity: quantity, price: price)),
              child: SvgPicture.asset(AppVectors.decreaseButton)),
          WidthSpacer(size: 8.w),
          Text(
            "$quantity",
            style: AppStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontColor: Colors.black),
          ),
          WidthSpacer(size: 8.w),
          GestureDetector(
              onTap: () => context
                  .read<OrderBloc>()
                  .add(IncreaseButtonPressed(quantity: quantity, price: price)),
              child: SvgPicture.asset(AppVectors.increaseButton)),
          WidthSpacer(size: 8.w),
          Text(
            "\$${price.toStringAsFixed(2)}",
            style: AppStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontColor: AppColors.primary),
          ),
        ],
      ),
    );
  }
}
