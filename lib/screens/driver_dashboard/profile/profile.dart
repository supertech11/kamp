import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/screens/dashboard/ticket/widgets/ticket_card.dart';

class DriverProfileScreen extends StatefulWidget {
  @override
  _DriverProfileScreenState createState() => _DriverProfileScreenState();
}

class _DriverProfileScreenState extends State<DriverProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 110,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
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
                    Expanded(
                      child: Center(
                        child: Text(
                          "Profile",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
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
              child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage("assets/images/person.png"),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Joshua King",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed(kEditProfileScreen);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "Edit Profile",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                "assets/images/wallet.png",
                                width: 25,
                                height: 25,
                              ),
                              title: Text("Wallet"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(kDriverWalletScreen);
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Image.asset(
                                "assets/images/car.png",
                                width: 20,
                                height: 20,
                              ),
                              title: Text("Vehicle and documents"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(kVehiclesAndDocumentScreen);
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Image.asset(
                                "assets/images/review.png",
                                width: 20,
                                height: 20,
                              ),
                              title: Text("Reviews"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(kDriverReviewsScreen);
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Image.asset(
                                "assets/images/notification.png",
                                width: 25,
                                height: 25,
                              ),
                              title: Text("Notifications"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(kNotificationsScreen);
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Image.asset(
                                "assets/images/contactus.png",
                                width: 25,
                                height: 25,
                              ),
                              title: Text("Contact Us"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {
                                Navigator.of(context).pushNamed(kContactScreen);
                              },
                            ),
                            Divider(),
                            ListTile(
                              leading: Image.asset(
                                "assets/images/terms.png",
                                width: 25,
                                height: 25,
                              ),
                              title: Text("Terms & Privacy"),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {},
                            ),
                            Divider(),
                            ListTile(
                              leading: Image.asset("assets/images/logout.png",
                                  width: 25, height: 25, color: Colors.pink),
                              title: Text(
                                "Sign Out",
                                style: TextStyle(color: Colors.pink),
                              ),
                              trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
