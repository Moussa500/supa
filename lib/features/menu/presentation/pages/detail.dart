import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/assets/app_vectors.dart';
import 'package:supa/config/colors/app_colors.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/custom_app_bar.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/core/common/widgets/width_spacer.dart';
import 'package:supa/core/dummy_data/dummy_data.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_cubit.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Detail extends StatefulWidget {
  const Detail({
    super.key,
  });
  @override
  State<Detail> createState() => _DetailState();
}

bool teryaki = false;

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    CardItem product = ModalRoute.of(context)!.settings.arguments as CardItem;
    return Scaffold(
        appBar: CustomAppbar(
          leadingAction: () => Navigator.pushNamed(
            context,
            '/navigator',
            arguments: 1,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Stack(
            children: [
              ListView(children: [
                BlocBuilder<CartBloc, CartState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: Image.asset(
                          DummyData.firstMenu.image!,
                          height: 290.h,
                          width: 370.w,
                          fit: BoxFit.cover,
                        )),
                        const HieghtSpacer(size: 30),
                        header(DummyData.firstMenu.name!),
                        const HieghtSpacer(size: 15),
                        Text(
                          DummyData.firstMenu.type!,
                          style: AppStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              fontColor: AppColors.drakGrey),
                        ),
                        const HieghtSpacer(size: 18),
                        SizedBox(
                          width: 200.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (product.quantity > 1) {
                                        product.quantity--;
                                      }
                                    });
                                  },
                                  child: SvgPicture.asset(
                                      AppVectors.decreaseButton)),
                              WidthSpacer(size: 8.w),
                              Text(
                                "${product.quantity}",
                                style: AppStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontColor: Colors.black),
                              ),
                              WidthSpacer(size: 8.w),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      product.quantity++;
                                    });
                                  },
                                  child: SvgPicture.asset(
                                      AppVectors.increaseButton)),
                              WidthSpacer(size: 8.w),
                              Text(
                                "\$${product.totalPrice.toStringAsFixed(2)}",
                                style: AppStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontColor: AppColors.primary),
                              ),
                            ],
                          ),
                        ),
                        const HieghtSpacer(size: 53),
                        header("Sauce"),
                        const HieghtSpacer(size: 8),
                        extension("Teryaki", 0, teryaki, (value) {
                          setState(() {
                            teryaki = value!;
                          });
                        }),
                        const HieghtSpacer(size: 8),
                        extension("Yakinka", 0, false, (value) {
                          setState(() {
                            teryaki = value!;
                          });
                        }),
                        const HieghtSpacer(size: 10),
                        header("Toppings"),
                        const HieghtSpacer(size: 10),
                        extension("Onions", 0, true, (value) {
                          setState(() {
                            teryaki = value!;
                          });
                        }),
                        const HieghtSpacer(size: 8),
                        extension("Tomatoes", 0, true, (value) {
                          setState(() {
                            teryaki = value!;
                          });
                        }),
                        const HieghtSpacer(size: 15),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<CartBloc>(context)
                                    .addToCart(product);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  backgroundColor: AppColors.primary,
                                  content: Text(" added successfully"),
                                ));
                                Navigator.pushNamed(context, '/navigator',
                                    arguments: 2);
                              },
                              child: Text(
                                "Add to card",
                                style: AppStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    fontColor: Colors.white),
                              )),
                        ),
                      ],
                    );
                  },
                ),
              ]),
            ],
          ),
        ));
  }

  Text header(String label) => Text(
        label,
        style: AppStyle(
            fontWeight: FontWeight.w700, fontSize: 20, fontColor: Colors.black),
      );

  Container extension(
      String sauceName, double price, isChecked, Function(bool?)? onChanged) {
    return Container(
      width: 370.w,
      height: 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: onChanged,
                  checkColor: Colors.white,
                  fillColor: WidgetStatePropertyAll(
                      !isChecked ? Colors.white : AppColors.primary),
                ),
                const WidthSpacer(size: 5),
                Text(
                  sauceName,
                  style: AppStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      fontColor: Colors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "$price\$",
              style: AppStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontColor: AppColors.primary),
            ),
          )
        ],
      ),
    );
  }
}
