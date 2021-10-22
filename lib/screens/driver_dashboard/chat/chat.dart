import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/screens/dashboard/ticket/widgets/ticket_card.dart';

class DriverChatScreen extends StatefulWidget {
  @override
  _DriverChatScreenState createState() => _DriverChatScreenState();
}

class _DriverChatScreenState extends State<DriverChatScreen> {
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
                          "Chats",
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
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Benin to Lagos ( Sammy Johnson )",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                "David : what’s up guys? I’m waiting at the bottom of the tree",
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                            backgroundColor: Color(0xff8204FF).withOpacity(0.1),
                            child: Text(
                              "23",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Benin to Lagos ( Sammy Johnson )",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                color: Color(0xffFA3E3E).withOpacity(0.1),
                                child: Center(
                                  child: Text(
                                    "Ended",
                                    style: TextStyle(
                                      color: Color(0xffFA3E3E),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff8204FF).withOpacity(0.1),
                          child: Icon(
                            Icons.delete,
                            size: 16,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Benin to Lagos ( Sammy Johnson )",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                width: 80,
                                height: 30,
                                color: Color(0xffFA3E3E).withOpacity(0.1),
                                child: Center(
                                  child: Text(
                                    "Ended",
                                    style: TextStyle(
                                      color: Color(0xffFA3E3E),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff8204FF).withOpacity(0.1),
                          child: Icon(
                            Icons.delete,
                            size: 16,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
