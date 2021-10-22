import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/custom_textformfield.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import 'package:kampe/utils/tickt_widget.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
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
                            "Contact Us",
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Message",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.white,
                            border: Border.all(
                              color: Color(0xffC4C4C4),
                            ),
                          ),
                          child: TextFormField(
                            onSaved: (value) {},
                            validator: (value) {},
                            minLines: 10,
                            maxLines: 10,
                            decoration: InputDecoration(
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 80),
                              // border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.only(left: 20, top: 15),
                              disabledBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              focusedErrorBorder: InputBorder.none,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/border.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/attachment.png",
                                width: 15,
                                height: 15,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Attach image",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "(Optional)",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        RoundedRaisedButton(
                          title: "Send",
                          onPress: () {
                            showDialog(
                                context: context,
                                builder: (ctx) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Container(
                                      height: 300,
                                      padding: EdgeInsets.all(20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            radius: 40,
                                            backgroundColor: Color(0xff0080F6)
                                                .withOpacity(0.1),
                                            child: Image.asset(
                                              "assets/images/yes.png",
                                              width: 30,
                                              height: 30,
                                            ),
                                          ),
                                          Text(
                                            "successful",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Your message has been sent succesfully",
                                            textAlign: TextAlign.center,
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                          RoundedRaisedButton(
                                            title: "Okay",
                                            onPress: () {
                                              Navigator.of(context).pop();
                                            },
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                });
                          },
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
