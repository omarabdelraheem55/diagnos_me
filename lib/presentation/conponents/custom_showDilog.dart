import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomShowDilog extends StatefulWidget {
 final Widget widget;
  const CustomShowDilog({required this.widget,super.key});

  @override
  State<CustomShowDilog> createState() => _CustomShowDilogState();
}

class _CustomShowDilogState extends State<CustomShowDilog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 308.w,
      height: 460.h,
      child: _showSimpleDialog(widget: widget),
    );
  }

   _showSimpleDialog({required Widget widget}) {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
      content: widget,
    );
    showDialog(builder: (context) => dialog, context: context);
  }
}
