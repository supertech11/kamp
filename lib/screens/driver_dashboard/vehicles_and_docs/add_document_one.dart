import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';

class AddDocumentScreenOne extends StatefulWidget {
  @override
  _AddDocumentScreenOneState createState() => _AddDocumentScreenOneState();
}

class _AddDocumentScreenOneState extends State<AddDocumentScreenOne> {
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
                            "Document management ( 1/2 )",
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
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CustomTextFormField(
                            labelText: "City of origin",
                            hintText: "Enter city",
                          ),
                          CustomTextFormField(
                            labelText: "State of origin",
                            hintText: "Enter state",
                          ),
                          CustomTextFormField(
                            labelText: "Nationality",
                            hintText: "Enter nationality",
                          ),
                          CustomTextFormField(
                            labelText: "Drivers license number",
                            hintText: "Enter number",
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 5),
                            child: Row(
                              children: [
                                Text("Licence expire date"),
                              ],
                            ),
                          ),
                          Container(
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
                                fieldLabelText:
                                    "When do you want your Tenancy to commence",
                                fieldHintText:
                                    "When do you want your Tenancy to commence",
                                // use24HourFormat: false,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, top: 0),
                                  border: InputBorder.none,
                                  hintText: "Select Date",
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
                          CustomTextFormField(
                            labelText: "Guarantor 1 name",
                            hintText: "Enter name",
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 5),
                            child: Row(
                              children: [
                                Text("Guarantor 1 date of birth"),
                              ],
                            ),
                          ),
                          Container(
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
                                fieldLabelText:
                                    "When do you want your Tenancy to commence",
                                fieldHintText:
                                    "When do you want your Tenancy to commence",
                                // use24HourFormat: false,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, top: 0),
                                  border: InputBorder.none,
                                  hintText: "Select Date",
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
                          CustomTextFormField(
                            labelText: "Guarantor 2 name",
                            hintText: "Enter name",
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 20.0, bottom: 5),
                            child: Row(
                              children: [
                                Text("Guarantor 2 date of birth"),
                              ],
                            ),
                          ),
                          Container(
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
                                fieldLabelText:
                                    "When do you want your Tenancy to commence",
                                fieldHintText:
                                    "When do you want your Tenancy to commence",
                                // use24HourFormat: false,
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, top: 0),
                                  border: InputBorder.none,
                                  hintText: "Select Date",
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
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: RoundedRaisedButton(
                title: "Next",
                onPress: () {
                  Navigator.of(context).pushNamed(kAddDocumentScreenTwo);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
