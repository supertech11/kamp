import 'package:flutter/material.dart';
import 'package:kampe/utils/rounded_raisedbutton.dart';
import './widgets/slide_dots.dart';
import 'dart:async';
import 'package:kampe/constants.dart';

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough>
    with SingleTickerProviderStateMixin {
  int _currentPage = 0;
  double _welcomeTextTopPadding = 60;
  double _logoWidth = 0;
  final PageController _pageController = PageController(initialPage: 0);
  AnimationController buttonAnimationController;

  List<Map<String, dynamic>> slides = [
    {
      "title": "Book tickets easily",
      "subtitle": "Trip tickets are booked with a few\nsimple steps.",
      "imageUrl": "assets/images/book_ticket.png",
    },
    {
      "title": "Payment security",
      "subtitle":
          "Your personal data and information is\ncompletely safe and secure.",
      "imageUrl": "assets/images/payment_security.png",
    },
    {
      "title": "24/7 Customer support",
      "subtitle":
          "We are always available to assist you via\nmail, chat or call.",
      "imageUrl": "assets/images/customer_support.png",
    }
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // //for logo
    // Future.delayed(Duration(seconds: 1), () {
    //   setState(() {
    //     _welcomeTextTopPadding = 0;
    //     _logoWidth = 100;
    //   });
    // });

    // Timer.periodic(Duration(seconds: 5), (timer) {
    //   if (_currentPage < 3) {
    //     _currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    //   _pageController.animateToPage(_currentPage,
    //       duration: Duration(seconds: 5), curve: Curves.easeInOut);
    // });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // padding:
            //     EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 8),

            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              for (int i = 0; i < slides.length; i++)
                                if (i == _currentPage)
                                  SlideDots(true)
                                else
                                  SlideDots(false)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: RoundedRaisedButton(
                            title: _currentPage != 2 ? "Next" : "Get Started",
                            buttonColor: Theme.of(context).primaryColor,
                            titleColor: Colors.white,
                            onPress: () {
                              if (_currentPage < 2) {
                                _currentPage += 1;
                                _pageController.animateToPage(_currentPage,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeInOut);
                              } else {
                                Navigator.of(context)
                                    .pushNamed(kChooseUserScreen);
                              }

                              // Navigator.of(context)
                              //     .pushReplacementNamed(kLoginScreen);
                            },
                          ),
                        ),
                        FlatButton(
                            onPressed: () {
                              _pageController.animateToPage(2,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut);
                            },
                            child: Text(
                              "Skip",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                height: 400,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 8),
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onPageChanged,
                  controller: _pageController,
                  itemCount: slides.length,
                  itemBuilder: (ctx, i) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "${slides[_currentPage]['imageUrl']}",
                          fit: BoxFit.fill,
                          height: 250,
                          width: 250,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "${slides[i]['title']}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 22),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "${slides[i]['subtitle']}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
