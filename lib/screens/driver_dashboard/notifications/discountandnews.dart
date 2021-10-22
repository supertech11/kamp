import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class DiscountAndNewsScreen extends StatefulWidget {
  @override
  _DiscountAndNewsScreenState createState() => _DiscountAndNewsScreenState();
}

class _DiscountAndNewsScreenState extends State<DiscountAndNewsScreen> {
  bool _isPush = true;
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
                            "Discounts and News",
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
                    child: Column(
                      children: [
                        RadioListTile(
                            value: true,
                            activeColor: Colors.blue,
                            title: Text("Push notifications"),
                            groupValue: _isPush,
                            onChanged: (value) {
                              setState(() {
                                _isPush = value;
                              });
                            }),
                        Divider(),
                        RadioListTile(
                            value: false,
                            activeColor: Colors.blue,
                            title: Text("Off"),
                            groupValue: _isPush,
                            onChanged: (value) {
                              setState(() {
                                _isPush = value;
                              });
                            }),
                        Divider(),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "When turned off you will stop recieving news and promotional information from Kampe.",
                          style: TextStyle(color: Colors.grey),
                        )
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
