
import 'package:diagnos_me/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomContainar extends StatelessWidget {
  Function() onTab;
  String? text;
  CustomContainar({super.key, required this.onTab,required this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTab();
      },
      child: Container(
        width: 230.w,
        height: 48.h,
        decoration: BoxDecoration(
            color: AppColors.baseColor,
            borderRadius: BorderRadius.circular(24.r)),
        child:
        Padding(
          padding: const EdgeInsets.only(left: 101, right: 90, bottom: 14, top: 14),
          child: Text(
          text!,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
