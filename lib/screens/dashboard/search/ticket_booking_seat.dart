import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class TicketBookingSeatScreen extends StatefulWidget {
  @override
  _TicketBookingSeatScreenState createState() =>
      _TicketBookingSeatScreenState();
}

class _TicketBookingSeatScreenState extends State<TicketBookingSeatScreen> {
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
                                "Select seat",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  StatusWidget(
                                    color: Colors.grey,
                                    title: "Available",
                                  ),
                                  StatusWidget(
                                    color: Colors.orange,
                                    title: "Selected",
                                  ),
                                  StatusWidget(
                                    color: Colors.blue,
                                    title: "Booked",
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 60,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Image.asset(
                                              "assets/images/wheel.png",
                                              width: 30,
                                              height: 30,
                                            ),
                                          ),
                                        ),
                                        SlotWidget(
                                          number: "1",
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SlotWidget(
                                          number: "2",
                                          color: Colors.grey,
                                        ),
                                        SlotWidget(
                                          number: "3",
                                          color: Colors.blue,
                                        ),
                                        SlotWidget(
                                          number: "4",
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SlotWidget(
                                          number: "5",
                                          color: Colors.blue,
                                        ),
                                        SlotWidget(
                                          number: "6",
                                          color: Colors.grey,
                                        ),
                                        SlotWidget(
                                          number: "7",
                                          color: Colors.blue,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
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
                  Navigator.of(context).pushNamed(kTicketBookingBoardingScreen);
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
