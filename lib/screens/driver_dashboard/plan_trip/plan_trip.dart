import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class PlanTripScreen extends StatefulWidget {
  @override
  _PlanTripScreenState createState() => _PlanTripScreenState();
}

class _PlanTripScreenState extends State<PlanTripScreen> {
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
                        Text(
                          "*Route",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        CustomTextFormField(
                          hintText: "Add short description of route",
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
                          subtitle: Text("Your area, street or a landmark."),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CustomTextFormField(
                                hintText: "Time",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomTextFormField(
                                hintText:
                                    "${_isBoarding ? 'Boarding' : 'Dropping'} point",
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
                                hintText: "Time",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 3,
                              child: CustomTextFormField(
                                hintText:
                                    "${_isBoarding ? 'Boarding' : 'Dropping'} point",
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
                            Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: Text(
                                  "Add new",
                                  style: TextStyle(
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RoundedRaisedButton(
                          title: "Proceed",
                          onPress: () {
                            Navigator.of(context).pushNamed(kTripCarDetails);
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
