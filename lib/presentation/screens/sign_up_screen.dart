import 'package:diagnos_me/app/app.image.dart';
import 'package:diagnos_me/app/app.word.dart';
import 'package:diagnos_me/presentation/conponents/custom_container.dart';
import 'package:diagnos_me/presentation/conponents/custom_text_form.dart';
import 'package:diagnos_me/presentation/screens/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final firstName=TextEditingController();
  final lastName=TextEditingController();
  final usertName=TextEditingController();
  final email=TextEditingController();
  final password=TextEditingController();
  final confirmPassword=TextEditingController();
  final cityId=TextEditingController();
  final phonNumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppWord.Signin,style: TextStyle(fontSize: 20,),),
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(AppWord.firstName,style: TextStyle(fontSize: 16),),
                      SizedBox(
                        width: 150.w,
                          child: CustomTextFaild(hintText: AppWord.efirstName, controller: firstName))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.5,top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(AppWord.lasttName,style: TextStyle(fontSize: 16),),
                      SizedBox(
                        width: 150.w,
                          child: CustomTextFaild(hintText: AppWord.elasttName, controller: lastName))
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 27.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppWord.userName,style: TextStyle(fontSize: 16),),
                  SizedBox(
                      width: 313.w,
                      child: CustomTextFaild(hintText: AppWord.euserName, controller: usertName))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 27.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppWord.email,style: TextStyle(fontSize: 16),),
                  SizedBox(
                      width: 313.w,
                      child: CustomTextFaild(hintText: AppWord.emailExample, controller: email))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 27.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppWord.password,style: TextStyle(fontSize: 16),),
                  SizedBox(
                      width: 313.w,
                      child: CustomTextFaild(hintText: AppWord.Epassword, controller: password,suffixIcon: const Icon(Icons.remove_red_eye_outlined),),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 27.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppWord.ConfirmPassword,style: TextStyle(fontSize: 16),),
                  SizedBox(
                      width: 313.w,
                      child: CustomTextFaild(hintText: AppWord.ConfirmPassword, controller: confirmPassword,suffixIcon: const Icon(Icons.remove_red_eye_outlined),))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(AppWord.Phone,style: TextStyle(fontSize: 16),),
                  Row(
                    children: [
                      SizedBox(
                          width: 50.w,
                          child: CustomTextFaild(
                            controller: cityId,
                            hintText: "+ 971",
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down_sharp,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                          width: 250.w,
                          child: CustomTextFaild(
                            controller: phonNumber,
                            hintText: "",
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Image.asset(AppImage.backImage),
                Padding(
                  padding: const EdgeInsets.only(top: 97,left: 79,right: 67),
                  child: CustomContainar(text: AppWord.Continue,onTab: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>VerificationScreen()), (route) => false);
                  },),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
