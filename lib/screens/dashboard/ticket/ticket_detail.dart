import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class TicketDetailScreen extends StatefulWidget {
  @override
  _TicketDetailScreenState createState() => _TicketDetailScreenState();
}

class _TicketDetailScreenState extends State<TicketDetailScreen> {
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
                            "Ticket Details",
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
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Monday",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "July 30, 2021",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 20,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Benin",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 5.0, left: 5),
                                      child: Image.asset(
                                        "assets/images/circle.png",
                                        width: 16,
                                        height: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    ListView.builder(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (ctx, index) {
                                        return Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5.0),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.black,
                                            radius: 5,
                                          ),
                                        );
                                      },
                                      itemCount: 7,
                                    ),
                                    Image.asset(
                                      "assets/images/circle.png",
                                      width: 16,
                                      height: 16,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        "Lagos",
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sammy Johnson",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Container(
                                    width: 80,
                                    height: 30,
                                    color: Colors.green.withOpacity(0.1),
                                    child: Center(
                                      child: Text(
                                        "Active",
                                        style: TextStyle(
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Image.asset(
                                      "assets/images/car.png",
                                      width: 15,
                                      height: 15,
                                    ),
                                  ),
                                  Text(
                                    "Toyota Sienna",
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Seat price",
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10.0),
                                        child: Image.asset(
                                          "assets/images/time.png",
                                          width: 15,
                                          height: 15,
                                        ),
                                      ),
                                      Text(
                                        "9:30 a.m",
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "₦3,500",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Booked seats",
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "1 & 2",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Total Amount",
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "₦7,000",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Payment status",
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Paid",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.green,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                              Image.asset(
                                "assets/images/bar_code.png",
                                height: 140,
                                width: 300,
                              ),
                              SizedBox(height: 20),
                              Text(
                                "Your trip is Active",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(10.0),
            //   child: RoundedRaisedButton(
            //     title: "Make Payment",
            //     onPress: () {
            //       // Navigator.of(context).pushNamed(kTicketBookingBoardingScreen);
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
