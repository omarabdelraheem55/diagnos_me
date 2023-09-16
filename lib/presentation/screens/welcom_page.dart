import 'package:diagnos_me/app/app.image.dart';
import 'package:diagnos_me/app/app.word.dart';
import 'package:diagnos_me/presentation/screens/Screen1.dart';
import 'package:diagnos_me/presentation/screens/screen3.dart';
import 'package:diagnos_me/presentation/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'Screen2.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              children: [
                Screen1(
                  controller: controller,
                  image: AppImage.rheumatology,
                  text1: AppWord.welcome,
                  text2: AppWord.welcome1,
                  onTab:next,
                ),
                Screen2(OnTab: next,controller: controller,),
                Screen3(OnTab: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>const SignInScreen()), (route) => false);
                },
                controller: controller,),
              ],
            ),
          ),],
      ),
    );

  }
  void next(){
    controller.animateToPage(controller.page!.toInt() +1,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeIn
    );
}}
