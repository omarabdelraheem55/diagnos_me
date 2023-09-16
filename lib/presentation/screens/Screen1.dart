import 'package:diagnos_me/app/app.word.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../app/app_colors.dart';
import '../conponents/cstomwelcomepages.dart';
import '../conponents/custom_container.dart';

class Screen1 extends StatelessWidget {
  final String?image;
  final String?text1;
  final String?text2;
  final Function?onTab;
  final PageController?controller;
  const Screen1({@required this.controller,super.key, required this.onTab,required this.image,required this.text2,required this.text1});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 167.5),
          child: CustomWelcomePages(image: image),
        ),
         Padding(
            padding: EdgeInsets.only(top: 38),
            child:

            SmoothPageIndicator(controller: controller!, count: 3,effect: SwapEffect(type: SwapType.yRotation,dotHeight: 10,dotWidth: 15,activeDotColor: AppColors.baseColor),)

        ),
         Padding(
            padding: const EdgeInsets.only(top: 38),
            child: Text(text1!,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            )),
         Text(
          text2!,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 108,bottom: 59),
          child: CustomContainar(
            text: AppWord.next,
            onTab: () {onTab!();},
          ),
        )
      ],
    );
  }
}
