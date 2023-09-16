

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomWelcomePages extends StatefulWidget {
  String? image;
  CustomWelcomePages({super.key, required this.image});

  @override
  State<CustomWelcomePages> createState() => _CustomWelcomePagesState();
}

class _CustomWelcomePagesState extends State<CustomWelcomePages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            widget.image!,
            width: 268.w,
          )
        ],
      ),
    );
  }
}
