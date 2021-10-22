import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class TicketBookingBoardingScreen extends StatefulWidget {
  @override
  _TicketBookingBoardingScreenState createState() =>
      _TicketBookingBoardingScreenState();
}

class _TicketBookingBoardingScreenState
    extends State<TicketBookingBoardingScreen> {
  bool _isBoarding = true;
  bool _isDropping = false;
  String startTime = "930";
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "Ticket Booking",
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TicketWidget(),
                      SizedBox(
                        height: 15,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "*Select boarding and dropping point",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isBoarding = true;
                                            _isDropping = false;
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
                                              "Boarding",
                                              style: TextStyle(
                                                color: _isBoarding
                                                    ? Colors.blue
                                                    : Colors.grey,
                                              ),
                                            ),
                                            _isBoarding
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
                                    Container(
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _isBoarding = false;
                                            _isDropping = true;
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
                                              "Dropping",
                                              style: TextStyle(
                                                color: _isDropping
                                                    ? Colors.blue
                                                    : Colors.grey,
                                              ),
                                            ),
                                            _isDropping
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
                              ListTile(
                                leading: Image.asset(
                                  "assets/images/location.png",
                                  width: 20,
                                  height: 20,
                                ),
                                minLeadingWidth: 20,
                                title: Text("Find your nearest boarding point"),
                                subtitle:
                                    Text("Your area, street or a landmark."),
                              ),
                              RadioListTile(
                                value: "930",
                                groupValue: startTime,
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (value) {
                                  setState(() {
                                    startTime = value;
                                  });
                                },
                                title: Row(
                                  children: [
                                    Text("9:30am"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                          "2715 Ash Dr. San Jose, South Dakota 83475",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                    ),
                                  ],
                                ),
                              ),
                              RadioListTile(
                                value: "1030",
                                groupValue: startTime,
                                activeColor: Theme.of(context).primaryColor,
                                onChanged: (value) {
                                  setState(() {
                                    startTime = value;
                                  });
                                },
                                title: Row(
                                  children: [
                                    Text("10:30am"),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                          "2715 Ash Dr. San Jose, South Dakota 83475",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: RoundedRaisedButton(
                title: "Proceed",
                onPress: () {
                  Navigator.of(context).pushNamed(kTicketBookingPaymentScreen);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SlotWidget extends StatelessWidget {
  String number;
  SlotWidget({
    this.number,
    this.color,
  });
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$number",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 30,
            height: 5,
            color: color,
          )
        ],
      ),
    );
  }
}

class StatusWidget extends StatelessWidget {
  StatusWidget({
    this.color,
    this.title,
  });
  Color color;
  String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: color,
          width: 15,
          height: 5,
        ),
        SizedBox(width: 5),
        Text(
          "$title",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
