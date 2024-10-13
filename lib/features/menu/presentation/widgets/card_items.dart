import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:supa/core/common/widgets/app_style.dart';
import 'package:supa/core/common/widgets/hieght_spacer.dart';
import 'package:supa/core/common/widgets/width_spacer.dart';
import 'package:supa/features/menu/presentation/bloc/order_bloc.dart';
import 'package:supa/features/menu/presentation/widgets/shared_methods.dart';

class CardItems extends StatelessWidget {
  const CardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderBloc, OrderState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.4,
          child: ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 30.w),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width*0.9,
                        child: Row(
                          children: [
                            Container(
                                width: 120.w,
                                height: 90.h,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.r)),
                                ),
                                child: Image.asset(state.items[index].image!)),
                            WidthSpacer(size: 34.w),
                            Column(
                              children: [
                                Text(
                                  overflow: TextOverflow.clip,
                                  state.items[index].name!,
                                  style:  AppStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontColor: Colors.black
                                  ),
                                ),
                                const HieghtSpacer(size: 23),
                                SharedMethods.quantityOfOrders(state.items[index].quantity!,state.items[index].price!,context),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
