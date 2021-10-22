import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class AccountAndTripUpdateScreen extends StatefulWidget {
  @override
  _AccountAndTripUpdateScreenState createState() =>
      _AccountAndTripUpdateScreenState();
}

class _AccountAndTripUpdateScreenState
    extends State<AccountAndTripUpdateScreen> {
  bool _isPush = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 110,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
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
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Account and Trip updates",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffFA3E3E).withOpacity(0.1),
                            child: Image.asset(
                              "assets/images/notification.png",
                              width: 20,
                              height: 20,
                              color: Color(0xffFA3E3E),
                            ),
                          ),
                          title: Text(
                            "Trip ended ( Benin to lagos )",
                          ),
                          subtitle: Text("July 30, 2021"),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xff43B571).withOpacity(0.1),
                            child: Image.asset(
                              "assets/images/notification.png",
                              width: 20,
                              height: 20,
                              color: Color(0xff43B571),
                            ),
                          ),
                          title: Text(
                            "Ticket booked ( Benin to lagos )",
                          ),
                          subtitle: Text("July 30, 2021"),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffE3DB22).withOpacity(0.1),
                            child: Image.asset(
                              "assets/images/notification.png",
                              width: 20,
                              height: 20,
                              color: Color(0xffE3DB22),
                            ),
                          ),
                          title: Text(
                            "Trip in transit ( Benin to lagos ) ",
                          ),
                          subtitle: Text("July 30, 2021"),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
