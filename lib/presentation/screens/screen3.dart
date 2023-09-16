import 'package:diagnos_me/presentation/screens/Screen1.dart';
import 'package:flutter/material.dart';

import '../../app/app.image.dart';
import '../../app/app.word.dart';
class Screen3 extends StatelessWidget {
  final Function?OnTab;
  final PageController?controller;
  const Screen3({@required this.controller,super.key,required this.OnTab});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Screen1(
        controller: controller,
          onTab:OnTab,
          image: AppImage.medicalprescription, text2: AppWord.Get, text1: AppWord.Seek),
    );}
}
