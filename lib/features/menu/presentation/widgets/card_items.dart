import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/core/common/widgets/width_spacer.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_cubit.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_state.dart';

class CardItems extends StatefulWidget {
  const CardItems({super.key});

  @override
  State<CardItems> createState() => _CardItemsState();
}

class _CardItemsState extends State<CardItems> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(builder: (context, state) {
      if (state is CartLoaded) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.separated(
            separatorBuilder: (context, index) => const HieghtSpacer(size: 16),
            itemCount: state.items.items.length,
            itemBuilder: (context, index) {
              final items = state.items;
              return Column(
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Row(
                          children: [
                            Container(
                                width: 120.w,
                                height: 90.h,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.r)),
                                ),
                                child:
                                    Image.asset(items.items[index].product.image!)),
                            WidthSpacer(size: 34.w),
                            Column(
                              children: [
                                Text(
                                  overflow: TextOverflow.clip,
                                  items.items[index].product.name!,
                                  style: AppStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      fontColor: Colors.black),
                                ),
                                const HieghtSpacer(size: 23),
                                SizedBox(
                                  width: 200.w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (items.items[index].quantity > 1) {
                                                items.items[index].quantity--;
                                              }
                                            });
                                          },
                                          child: SvgPicture.asset(
                                              AppVectors.decreaseButton)),
                                      WidthSpacer(size: 8.w),
                                      Text(
                                        "${items.items[index].quantity}",
                                        style: AppStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontColor: Colors.black),
                                      ),
                                      WidthSpacer(size: 8.w),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              items.items[index].quantity++;
                                            });
                                          },
                                          child: SvgPicture.asset(
                                              AppVectors.increaseButton)),
                                      WidthSpacer(size: 8.w),
                                      Text(
                                        "\$${items.items[index].totalPrice.toStringAsFixed(2)}",
                                        style: AppStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            fontColor: AppColors.primary),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const HieghtSpacer(size: 13),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Divider(
                      height: 2,
                      color: Color(0xffBCBCBC),
                      thickness: 1,
                    ),
                  ),
                ],
              );
            },
          ),
        );
      }
      return const Center(child: Text("Your card is Empty"));
    });
  }
}
