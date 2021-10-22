import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/screens/dashboard/ticket/widgets/ticket_card.dart';

class TicketScreen extends StatefulWidget {
  @override
  _TicketScreenState createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
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
                          "Ticket",
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
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "Period : ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xffC4C4C4),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DateTimePicker(
                                initialValue: '',
                                type: DateTimePickerType.date,
                                fieldLabelText: "",
                                fieldHintText: "",
                                // use24HourFormat: false,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, top: 0),
                                  border: InputBorder.none,
                                  hintText: "From",
                                  prefixIconConstraints:
                                      BoxConstraints(minWidth: 25),
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    size: 12,
                                  ),
                                ),

                                // icon: ,
                                // decoration: InputDecoration(border: InputBorder.none),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2100),
                                dateLabelText: 'From',
                                onChanged: (val) {
                                  String date;
                                  try {
                                    date = DateFormat("dd-MM-yyyy")
                                        .format(DateTime.parse(val));
                                  } catch (error) {}

                                  setState(() {
                                    // rentForm.tenancyCommencementDate = date;
                                  });
                                },
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) {
                                  String date;
                                  try {
                                    date = DateFormat("dd-MM-yyyy")
                                        .format(DateTime.parse(val));
                                  } catch (error) {}
                                  setState(() {
                                    // rentForm.tenancyCommencementDate = date;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: Color(0xffC4C4C4),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: DateTimePicker(
                                initialValue: '',
                                type: DateTimePickerType.date,
                                fieldLabelText: "",
                                fieldHintText: "",
                                // use24HourFormat: false,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, top: 0),
                                  border: InputBorder.none,
                                  hintText: "To",
                                  prefixIconConstraints:
                                      BoxConstraints(minWidth: 25),
                                  prefixIcon: Icon(
                                    Icons.calendar_today,
                                    size: 12,
                                  ),
                                ),

                                // icon: ,
                                // decoration: InputDecoration(border: InputBorder.none),
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2100),
                                dateLabelText: 'To',
                                onChanged: (val) {
                                  String date;
                                  try {
                                    date = DateFormat("dd-MM-yyyy")
                                        .format(DateTime.parse(val));
                                  } catch (error) {}

                                  setState(() {
                                    // rentForm.tenancyCommencementDate = date;
                                  });
                                },
                                validator: (val) {
                                  print(val);
                                  return null;
                                },
                                onSaved: (val) {
                                  String date;
                                  try {
                                    date = DateFormat("dd-MM-yyyy")
                                        .format(DateTime.parse(val));
                                  } catch (error) {}
                                  setState(() {
                                    // rentForm.tenancyCommencementDate = date;
                                  });
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              // physics: NeverScrollableScrollPhysics(),
              // shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(kTicketDetailScreen);
                  },
                  child: TicketCard(),
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
