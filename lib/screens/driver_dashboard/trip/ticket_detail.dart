import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/screens/dashboard/search/ticket_booking_seat.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class DriverTickeDetailScreen extends StatefulWidget {
  @override
  _DriverTickeDetailScreenState createState() =>
      _DriverTickeDetailScreenState();
}

class _DriverTickeDetailScreenState extends State<DriverTickeDetailScreen> {
  bool _isBoarding = true;
  bool _isDropping = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Monday",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
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
                        style: TextStyle(fontSize: 16, color: Colors.white),
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
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0, left: 5),
                          child: Image.asset(
                            "assets/images/circle.png",
                            width: 16,
                            height: 16,
                          ),
                        ),
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 5.0),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
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
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            "Lagos",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Car Type",
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "Toyota Sienna",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Departing time",
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "9:30 am",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Seats",
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "7",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Seat price",
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "N1,000",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Trip status",
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Active",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StatusWidget(
                              color: Colors.grey,
                              title: "Available",
                            ),
                            SizedBox(
                              width: 50,
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
                                      borderRadius: BorderRadius.circular(10),
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
                                    color: Colors.blue,
                                  ),
                                  SlotWidget(
                                    number: "7",
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Booked seats",
                            ),
                            Text(
                              "6",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Amount",
                            ),
                            Text(
                              "N5,000",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "*Add boarding and dropping point",
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
                          title: Text("Pick up passengers at boarding points"),
                          subtitle: Text("An area, street or a landmark."),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                hintText: "8:30am",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomTextFormField(
                                hintText: "eleyele road",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                hintText: "9:30am",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomTextFormField(
                                hintText: "eleyele road",
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RoundedRaisedButton(
                          title: "Set Trip to Transit",
                          onPress: () {
                            // Navigator.of(context).pushNamed(kTripCarDetails);
                          },
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
