import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class DriverReviewsScreen extends StatefulWidget {
  @override
  _DriverReviewsScreenState createState() => _DriverReviewsScreenState();
}

class _DriverReviewsScreenState extends State<DriverReviewsScreen> {
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
                            "Reviews",
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
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Total trips"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "7",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Total reviews"),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "29",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Avg rating"),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              width: 60,
                              height: 20,
                              color: Colors.green.withOpacity(0.1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.green,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text("Benin to lagos"),
                          subtitle: Text("Reviews: 5"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                          onTap: () {
                            // Navigator.of(context)
                            //     .pushNamed(kAccountAndTripScreen);
                          },
                        ),
                        Divider(),
                        ListTile(
                          title: Text("Benin to lagos"),
                          subtitle: Text("Reviews: 5"),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                          onTap: () {
                            // Navigator.of(context)
                            //     .pushNamed(kDiscountAndNewsScreen);
                          },
                        ),
                        Divider()
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
