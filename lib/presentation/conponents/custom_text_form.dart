import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget {
  final String? hintText;
  final Icon? suffixIcon;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const CustomTextFaild({this.keyboardType,super.key,required this.hintText,this.suffixIcon,required this.controller});

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: hintText,
        suffixIcon:suffixIcon ,
      ),
    );
  }
}
