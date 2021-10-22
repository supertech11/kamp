import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import './widget/wallet_widget.dart';
import './widget/welcome_widget.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 260,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                WelcomeWidget(),
                WalletWidget()
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Where are you \ngoing to?",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: CustomTextFormField(
                            hintText: "From",
                          ),
                        ),
                        Positioned(
                          right: 5,
                          bottom: 0,
                          child: CircleAvatar(
                            radius: 10,
                            child: Icon(
                              Icons.arrow_downward_rounded,
                              size: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CustomTextFormField(
                      hintText: "To",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color(0xffC4C4C4),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: DateTimePicker(
                                    initialValue: '',
                                    type: DateTimePickerType.date,
                                    fieldLabelText:
                                        "When do you want your Tenancy to commence",
                                    fieldHintText:
                                        "When do you want your Tenancy to commence",
                                    // use24HourFormat: false,
                                    decoration: InputDecoration(
                                      contentPadding:
                                          EdgeInsets.only(left: 10, top: 0),
                                      border: InputBorder.none,
                                      hintText: "Date",
                                    ),

                                    // icon: ,
                                    // decoration: InputDecoration(border: InputBorder.none),
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2100),
                                    dateLabelText: 'Date',
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
                            ],
                          ),
                          // CustomTextFormField(
                          //   hintText: "Date",
                          // ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: CustomTextFormField(
                            hintText: "Seats",
                            keyboardType: TextInputType.number,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedRaisedButton(
                      title: "Search",
                      onPress: () {
                        Navigator.of(context).pushNamed(kSearchScreen);
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
