import 'package:diagnos_me/app/app.image.dart';
import 'package:diagnos_me/app/app.word.dart';
import 'package:diagnos_me/presentation/conponents/custom_container.dart';
import 'package:diagnos_me/presentation/screens/health_Test1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../conponents/custom_containar2.dart';

class Congratulations extends StatefulWidget {
  const Congratulations({super.key});

  @override
  State<Congratulations> createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 117.5, left: 131, right: 131),
              child: Image.asset(AppImage.person),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 65.7),
              child: Text(
                AppWord.Congratulations,
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 63, right: 93, left: 93),
              child: Text(
                AppWord.successfully,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 160, right: 160),
              child: Image.asset(AppImage.done),
            ),
            Padding(
                padding: const EdgeInsets.only(
                    top: 61, left: 73, right: 73, bottom: 34),
                child: CustomContainar(
                  onTab: () {
                    _showSimpleDialog();
                  },
                  text: AppWord.Done,
                )),
          ],
        ),
      ),
    );
  }

  void _showSimpleDialog() {
    AlertDialog dialog = AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.r)),
      content: SizedBox(
        width: 308.w,
        height: 460.h,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 129, left: 70, right: 70),
              child: Text(
                "This Account For",
                style: TextStyle(fontSize: 14),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>const HealthTest1()), (route) => false);
              },
              child: const Padding(
                padding: EdgeInsets.only(top: 36, left: 16, right: 16),
                child: CustomContainar2(
                  titel: "Patient",
                ),
              ),
            ),
             InkWell(
               onTap: (){},
               child: const Padding(
                padding: EdgeInsets.only(top: 30, left: 16, right: 16),
                child: CustomContainar2(
                  titel: "Doctor",
                ),
            ),
             ),
          ],
        ),
      ),
    );
    showDialog(builder: (context) => dialog, context: context);
  }
}
