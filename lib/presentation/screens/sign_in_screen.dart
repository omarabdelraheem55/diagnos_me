import 'package:diagnos_me/app/app.image.dart';
import 'package:diagnos_me/app/app.word.dart';
import 'package:diagnos_me/presentation/conponents/custom_container.dart';
import 'package:diagnos_me/presentation/conponents/otp_screen.dart';
import 'package:diagnos_me/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/app_colors.dart';
import '../conponents/custom_text_form.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final cityCod = TextEditingController();
  final phoneNumber = TextEditingController();
  bool visibility = true;
  bool showBottomShet = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 160, right: 160, top: 47),
              child: Text(
                AppWord.Signin,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15.4),
              child: Image.asset(AppImage.Tabletlogin),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, top: 41, right: 238),
              child: Text(
                AppWord.Phone,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 18),
                  child: SizedBox(
                      width: 50.w,
                      child: CustomTextFaild(
                        controller: cityCod,
                        hintText: "+ 971",
                        suffixIcon: const Icon(
                          Icons.keyboard_arrow_down_sharp,
                        ),
                      )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: SizedBox(
                      width: 250.w,
                      child: CustomTextFaild(
                        controller: phoneNumber,
                        hintText: "",
                      )),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 31, top: 18.5, right: 278),
              child: Text(
                AppWord.password,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: SizedBox(
                  width: 313.w,
                  child: CustomTextFaild(
                    controller: phoneNumber,
                    hintText: AppWord.Epassword,
                  )),
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topRight: Radius.circular(80.r),
                      topLeft: Radius.circular(
                        80.r,
                      ),
                    )),
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        width: 375.w,
                        height: 388.h,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 101, right: 126, top: 47),
                                child: Text(
                                  AppWord.Fpassword,
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 14, right: 14, top: 44),
                                child: Text(
                                  AppWord.Enter,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    left: 30, top: 41, right: 238),
                                child: Text(
                                  AppWord.Phone,
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 30, top: 18),
                                    child: SizedBox(
                                        width: 50.w,
                                        child: CustomTextFaild(
                                          keyboardType: TextInputType.phone,
                                          controller: cityCod,
                                          hintText: "+ 971",
                                          suffixIcon: const Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                          ),
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18),
                                    child: SizedBox(
                                        width: 250.w,
                                        child: CustomTextFaild(
                                          keyboardType: TextInputType.phone,
                                          controller: phoneNumber,
                                          hintText: "",
                                        )),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 34.5, bottom: 49),
                                child: CustomContainar(
                                    onTab: () {
                                      // showModalBottomSheet(
                                      //     backgroundColor: Colors.white,
                                      //     shape: RoundedRectangleBorder(
                                      //         borderRadius: BorderRadius.only(
                                      //       topRight: Radius.circular(80.r),
                                      //       topLeft: Radius.circular(
                                      //         80.r,
                                      //       ),
                                      //     )),
                                      //     context: context,
                                      //     builder: (context) {
                                      //       return SizedBox(
                                      //         width: double.infinity,
                                      //         height: 388,
                                      //         child: SingleChildScrollView(
                                      //           child: Column(
                                      //             children: [
                                      //               const Padding(
                                      //                 padding: EdgeInsets.only(
                                      //                     left: 101,
                                      //                     right: 126,
                                      //                     top: 47),
                                      //                 child: Text(
                                      //                   AppWord.Enter4,
                                      //                   style: TextStyle(
                                      //                       fontSize: 20),
                                      //                 ),
                                      //               ),
                                      //               const Padding(
                                      //                 padding: EdgeInsets.only(
                                      //                     left: 14,
                                      //                     right: 14,
                                      //                     top: 44),
                                      //                 child: Text(
                                      //                   AppWord.digit,
                                      //                   style: TextStyle(
                                      //                       fontSize: 14),
                                      //                 ),
                                      //               ),
                                      //               SizedBox(
                                      //                 width: double.infinity,
                                      //                 height: 500.h,
                                      //                 child:  OtpScreen(
                                      //                   OnTab1: (){
                                      //
                                      //                   },
                                      //                 ),
                                      //               ),
                                      //             ],
                                      //           ),
                                      //         ),
                                      //       );
                                      //     });
                                      _showSimpleDialog();
                                    },
                                    text: AppWord.Submit),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 200, top: 4.5, right: 49),
                child: Text(
                  AppWord.Fpassword,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "italic",
                      color: AppColors.scendColor),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 42),
              child: CustomContainar(
                onTab: () {},
                text: AppWord.Login,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 61),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const SignUpScreen()));
                },
                child: const Text.rich(TextSpan(children: [
                  TextSpan(
                      text: AppWord.account,
                      style:
                          TextStyle(fontSize: 14, color: AppColors.scendColor)),
                  TextSpan(
                      text: AppWord.Signin,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.scendColor)),
                ])),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSimpleDialog()  {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
            content:
              SizedBox(height: 460.h, width: 308.w,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 70, right: 70,top: 14),
                      child: Text(AppWord.Congratulations,style: TextStyle(fontSize: 18),),
                    ), Text("Password reset success",style: TextStyle(fontSize: 14),),
                  Padding(
                    padding: const EdgeInsets.only(top: 42,right: 40,left: 40),
                    child: Image.asset(AppImage.mobile),
                  ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70,bottom: 20),
                      child: CustomContainar(onTab: (){}, text: AppWord.Done),
                    )
                  ],
                ),
              ),
          );
    showDialog(builder: (context) => dialog, context: context);
  }
}
