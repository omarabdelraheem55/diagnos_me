import 'package:diagnos_me/app/app.image.dart';
import 'package:diagnos_me/app/app.word.dart';
import 'package:diagnos_me/app/app_colors.dart';
import 'package:diagnos_me/presentation/conponents/custom_container.dart';
import 'package:diagnos_me/presentation/screens/health_test2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HealthTest1 extends StatefulWidget {
  const HealthTest1({super.key});

  @override
  State<HealthTest1> createState() => _HealthTest1State();
}

class _HealthTest1State extends State<HealthTest1> {
  int age=50;
  bool Type = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        actions: [const Icon(Icons.list_outlined)],
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "Health Test",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 31,bottom: 20),
            child: const Text("Hello,",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31),
            child: const Text("Let's get started."),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 80, left: 133, right: 133),
                child: Text("Select your age",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,right: 118,left: 118),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        width: 26.w,
                        height: 26.h,
                        child: Center(child: Text("-",style: TextStyle(fontSize: 18),)),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.baseColor),
                          borderRadius: BorderRadius.circular(60)
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          age--;
                        });
                      },
                    ),
                    Container(
                      width: 38.w,
                      height: 38.h,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.baseColor),
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("$age"),
                        ),
                      ),
                    ),
                    InkWell(
                      child: Container(
                        width: 26.w,
                        height: 26.h,
                        child: Center(child: Text("+")),
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.baseColor),
                            borderRadius: BorderRadius.circular(60)
                        ),
                      ),
                      onTap: (){
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 62, left: 133, right: 133),
                child: Text("Select your gender",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 66,right: 66,bottom: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){
                        setState(() {
                          Type=false;
                        });
                      },
                      child: Container(
                        width: 110.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          color:Type==true? Color(0xff0DBE7E3):AppColors.scendColor,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(AppImage.male),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          Type=true;
                        });
                      },
                      child: Container(
                        width: 110.w,
                        height: 90.h,
                        decoration: BoxDecoration(
                          color:Type==true? AppColors.scendColor:Color(0xff0DBE7E3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(AppImage.female),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomContainar(onTab: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>HealthTest2()));
              }, text: AppWord.Continue)
            ],
          )
        ],
      ),
    );
  }
}
