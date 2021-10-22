import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/models/user.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool _isRegister = true;
  bool _isLogin = false;
  User user;
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
    user = arguments["user"];
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Text(
                  "Kampe",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              height: 460,
              margin: EdgeInsets.only(top: 200, left: 20, right: 20),
              // decoration: BoxDecoration(
              //   borderRadius: BorderRadius.circular(10),
              //   color: Colors.white,
              // ),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                          child: Column(
                        children: [
                          Container(
                            height: 50,
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(10),
                            //   border: Border.all(color: Colors.grey),
                            // ),
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isRegister = true;
                                        _isLogin = false;
                                      });
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Text(
                                          "Sign Up",
                                          style: TextStyle(
                                            color: _isRegister
                                                ? Colors.blue
                                                : Colors.grey,
                                          ),
                                        ),
                                        _isRegister
                                            ? Container(
                                                width: 40,
                                                height: 3,
                                                color: Colors.blue,
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isRegister = false;
                                        _isLogin = true;
                                      });
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          height: 1,
                                        ),
                                        Text(
                                          "Sign In",
                                          style: TextStyle(
                                            color: _isLogin
                                                ? Colors.blue
                                                : Colors.grey,
                                          ),
                                        ),
                                        _isLogin
                                            ? Container(
                                                width: 40,
                                                height: 3,
                                                color: Colors.blue,
                                              )
                                            : Container(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          !_isRegister
                              ? Container()
                              : Expanded(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          CustomTextFormField(
                                            hintText: "First name",
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Last name",
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Email address",
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          CustomTextFormField(
                                            hintText: "Mobile number",
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          RoundedRaisedButton(
                                            title: "Continue",
                                            onPress: () {
                                              Navigator.of(context).pushNamed(
                                                  kOtpVerificationScreen,
                                                  arguments: {...arguments});
                                            },
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Or"),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Already have an account? "),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _isLogin = true;
                                                    _isRegister = false;
                                                  });
                                                },
                                                child: Text(
                                                  "Sign In",
                                                  style: TextStyle(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                          !_isLogin
                              ? Container()
                              : Expanded(
                                  child: SingleChildScrollView(
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        children: [
                                          CustomTextFormField(
                                            hintText: "Mobile number",
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          RoundedRaisedButton(
                                            title: "Continue",
                                            onPress: () {
                                              Navigator.of(context).pushNamed(
                                                  kOtpVerificationScreen,
                                                  arguments: {...arguments});
                                            },
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text("Or"),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Don't have an account? "),
                                              GestureDetector(
                                                onTap: () {
                                                  setState(() {
                                                    _isLogin = false;
                                                    _isRegister = true;
                                                  });
                                                },
                                                child: Text(
                                                  "Sign Up",
                                                  style: TextStyle(
                                                      color: Theme.of(context)
                                                          .primaryColor),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
