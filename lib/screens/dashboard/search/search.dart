import 'package:flutter/material.dart';
import 'package:kampe/constants.dart';
import 'package:kampe/utils/tickt_widget.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
              child: Container(
                  child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(kTicketBookingSeatScreen);
                      },
                      child: TicketWidget());
                },
                itemCount: 10,
              )),
            )
          ],
        ),
      ),
    );
  }
}
