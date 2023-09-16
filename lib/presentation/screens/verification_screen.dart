import 'dart:async';
import 'package:diagnos_me/app/app.image.dart';
import 'package:diagnos_me/app/app.word.dart';
import 'package:diagnos_me/presentation/screens/congratulations_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';
import '../../app/app_colors.dart';
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final int _otpCodeLength = 4;
  bool _isLoadingButton = false;
  bool _enableButton = false;
  String _otpCode = "";
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final intRegex = RegExp(r'\d+', multiLine: true);
  TextEditingController textEditingController =
      TextEditingController(text: "");
  @override
  void initState() {
    super.initState();
    _getSignatureCode();
    _startListeningSms();
  }

  @override
  void dispose() {
    super.dispose();
    SmsVerification.stopListening();
  }

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  /// get signature code
  _getSignatureCode() async {
    String? signature = await SmsVerification.getAppSignature();
  }

  /// listen sms
  _startListeningSms() {
    SmsVerification.startListeningSms().then((message) {
      setState(() {
        _otpCode = SmsVerification.getCode(message, intRegex);
        textEditingController.text = _otpCode;
        _onOtpCallBack(_otpCode, true);
      });
    });
  }

  _onSubmitOtp() {
    setState(() {
      _isLoadingButton = !_isLoadingButton;
      _verifyOtpCode();
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder)=>Congratulations()), (route) => false);
    });
  }

  _onClickRetry() {
    _startListeningSms();
  }

  _onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      _otpCode = otpCode;
      if (otpCode.length == _otpCodeLength && isAutofill) {
        _enableButton = false;
        _isLoadingButton = true;
        _verifyOtpCode();
      } else if (otpCode.length == _otpCodeLength && !isAutofill) {
        _enableButton = true;
        _isLoadingButton = false;
      } else {
        _enableButton = false;
      }
    });
  }

  _verifyOtpCode() {
    FocusScope.of(context).requestFocus(FocusNode());
    Timer(const Duration(milliseconds: 4000), () {
      setState(() {
        _isLoadingButton = false;
        _enableButton = false;
      });

    //   _scaffoldKey.currentState?.showSnackBar(
    //    SnackBar(content: Text("Verification OTP Code $_otpCode Success")));
     });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppWord.Verification,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 54, left: 41, right: 41),
              child: Image.asset(AppImage.email),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 71, left: 55, right: 55),
              child: Text(
                AppWord.OTP,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 51),
              child: TextFieldPin(
                  textController: textEditingController,
                  autoFocus: true,
                  codeLength: _otpCodeLength,
                  alignment: MainAxisAlignment.center,
                  defaultBoxSize: 46.0,
                  margin: 10,
                  selectedBoxSize: 46.0,
                  textStyle: const TextStyle(fontSize: 16),
                  defaultDecoration: _pinPutDecoration.copyWith(
                    border: Border.all(
                        color: Colors.grey
                    ),
                  ),
                  selectedDecoration: _pinPutDecoration,
                  onChange: (code) {
                    _onOtpCallBack(code,false);
                  }),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 28),
              child: Text(AppWord.Resend),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38,left: 73,right: 73),
              child: SizedBox(
                width: 230.w,
                height: 48.h,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24.r))),
                  onPressed: _enableButton ? _onSubmitOtp : null,
                  color: AppColors.baseColor,
                  disabledColor: Colors.blue[100],
                  child: _setUpButtonChild(),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: TextButton(
                onPressed: _onClickRetry,
                child: const Text(
                  "Retry",
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _setUpButtonChild() {
    if (_isLoadingButton) {
      return  Container(
        height: 19.h,
        decoration: BoxDecoration(
            color: AppColors.baseColor,
            borderRadius: BorderRadius.circular(24.r)),
        width: 19,
        child: const CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    } else {
      return const Text(
        "Verify",
        style: TextStyle(color: Colors.white),
      );
    }
  }
}
