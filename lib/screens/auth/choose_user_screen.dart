import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/models/user.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';

class ChooseUserScreen extends StatefulWidget {
  @override
  _ChooseUserScreenState createState() => _ChooseUserScreenState();
}

class _ChooseUserScreenState extends State<ChooseUserScreen> {
  // String selectedUser = "";
  User user = User();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    user.userType = "passenger";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Why do you want to\nuse Kampe?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Select an option to continue",
              style: TextStyle(),
            ),
            Expanded(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          user.userType = "passenger";
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${user.userType == 'passenger' ? 'assets/images/passenger_select.png' : 'assets/images/passenger_unselect.png'}",
                            width: 130,
                            height: 130,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "I'm a Passenger  ",
                            style: TextStyle(
                                color: user.userType == 'passenger'
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          user.userType = "driver";
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "${user.userType == 'driver' ? 'assets/images/driver_select.png' : 'assets/images/driver_unselect.png'}",
                            width: 130,
                            height: 130,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "I'm a Driver  ",
                            style: TextStyle(
                                color: user.userType == 'driver'
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            RoundedRaisedButton(
              title: "Continue",
              onPress: () {
                Navigator.of(context)
                    .pushNamed(kAuthScreen, arguments: {"user": user});
              },
            )
          ],
        ),
      ),
    );
  }
}
