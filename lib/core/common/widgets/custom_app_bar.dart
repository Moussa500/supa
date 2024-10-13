import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supa/config/assets/app_vectors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? action;
  final bool? hideBack;
  final Color? backgroundColor;
  final void Function()? leadingAction;
  const CustomAppbar(
      {super.key,
      this.action,
      this.title,
      this.backgroundColor,
      this.hideBack,
      this.leadingAction});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ?? const Text(''),
      actions: [action ?? Container()],
      centerTitle: true,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0,
      leading: hideBack == true
          ? Container()
          : IconButton(
              onPressed: leadingAction ??() {
                 Navigator.pop(context);
              },
              icon: Container(
                height: 50.h,
                width: 50.w,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.03),
                    shape: BoxShape.circle),
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    AppVectors.previousIcon
                  ),
                ),
              )),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
