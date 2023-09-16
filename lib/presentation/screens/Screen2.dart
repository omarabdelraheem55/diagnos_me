import 'package:diagnos_me/presentation/screens/Screen1.dart';
import 'package:flutter/material.dart';
import '../../app/app.image.dart';
import '../../app/app.word.dart';
class Screen2 extends StatelessWidget {
  final Function?OnTab;
  final PageController?controller;
  const Screen2({@required this.controller,super.key,required this.OnTab});
  @override
  Widget build(BuildContext context) {
    return Screen1(
      controller: controller,
      onTab: OnTab,
        image: AppImage.doctor, text2: AppWord.View, text1: AppWord.Review);
  }
}
