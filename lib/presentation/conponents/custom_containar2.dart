import 'package:diagnos_me/app/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainar2 extends StatefulWidget {
  final String titel;
  const CustomContainar2({required this.titel, super.key});

  @override
  State<CustomContainar2> createState() => _CustomContainar2State();
}

class _CustomContainar2State extends State<CustomContainar2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 276.w,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
        border: Border.all(color: AppColors.baseColor),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 15, bottom: 15, right: 100, left: 100),
        child: Text(
          widget.titel,
          style: const TextStyle(fontSize: 15, color: AppColors.baseColor),
        ),
      ),
    );
  }
}
