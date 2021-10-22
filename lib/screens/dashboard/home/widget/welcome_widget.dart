import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Color(0xff2492F7),
                radius: 30,
                backgroundImage: AssetImage("assets/images/person.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome,",
                    style: TextStyle(color: Color(0xffCCCCCC), fontSize: 16),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Joshua",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ],
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(kNotificationsScreen);
            },
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xff2492F7),
              child: Image.asset(
                "assets/images/notification.png",
                width: 20,
                height: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
