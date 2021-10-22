import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/models/user.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  Map<String, dynamic> labels = {};
  final formKey = GlobalKey<FormState>();
  bool hasError = false;
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  bool _isLoading = false;
  StreamController<ErrorAnimationType> errorController;
  bool _isDigitComplete = false;
  bool _isResendingOtp = false;
  bool _isValidatingOtp = false;
  User user;
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    user = arguments["user"];
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(30),
            //   topRight: Radius.circular(30),
            // ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Mobile verification",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Enter OTP code sent to phone here",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    PinCodeTextField(
                      appContext: context,
                      pastedTextStyle: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      length: 4,
                      obscureText: false,
                      obscuringCharacter: '*',
                      blinkWhenObscuring: true,
                      animationType: AnimationType.fade,
                      validator: (v) {
                        // if (v.length < 6) {
                        //   setState(() {
                        //     _isDigitComplete = false;
                        //   });
                        // } else {
                        //   return null;
                        // }
                      },
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        inactiveColor: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                        inactiveFillColor: Colors.white,
                        selectedFillColor: Color(0xffF0F3F6),
                        selectedColor: Theme.of(context).primaryColor,
                        activeColor: Theme.of(context).primaryColor,
                        fieldHeight: 45,
                        fieldWidth: 60,
                        activeFillColor: hasError ? Colors.grey : Colors.white,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      backgroundColor: Colors.white10,
                      enableActiveFill: true,
                      errorAnimationController: errorController,
                      controller: textEditingController,
                      keyboardType: TextInputType.number,

                      // boxShadows: [
                      //   BoxShadow(
                      //     offset: Offset(0, 1),
                      //     color: Colors.black12,
                      //     blurRadius: 10,
                      //   )
                      // ],
                      onCompleted: (v) async {
                        print("Completed");
                        setState(() {
                          _isDigitComplete = true;
                        });
                        // await signup(context);
                      },
                      // onTap: () {
                      //   print("Pressed");
                      // },
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          currentText = value;
                        });
                        if (value.length < 6) {
                          setState(() {
                            _isDigitComplete = false;
                          });
                        }
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");
                        //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                        //but you can show anything you want here, like your pop up saying wrong paste format or etc
                        return true;
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("Resend code"),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    // Expanded(child: Container()),
                    RoundedRaisedButton(
                      title: "Continue",
                      onPress: () {
                        if (user.userType == "passenger") {
                          Navigator.of(context).pushNamed(kDashboardScreen);
                        } else {
                          Navigator.of(context)
                              .pushNamed(kDriverDashboardScreen);
                        }
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
