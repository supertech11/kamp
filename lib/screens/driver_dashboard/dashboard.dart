import 'package:flutter/material.dart';
import 'package:kampe/screens/dashboard/home/home.dart';
import 'package:kampe/screens/dashboard/ticket/ticket.dart';
import 'package:kampe/screens/dashboard/chat/chat.dart';
import 'package:kampe/screens/dashboard/profile/profile.dart';
import 'package:kampe/screens/driver_dashboard/chat/chat.dart';
import 'package:kampe/screens/driver_dashboard/home/home.dart';
import 'package:kampe/screens/driver_dashboard/profile/profile.dart';
import 'package:kampe/screens/driver_dashboard/trip/trip.dart';
import '../../constants.dart';

class DriverDashboard extends StatefulWidget {
  int pageIndex;
  DriverDashboard(this.pageIndex);
  @override
  _DriverDashboardState createState() => _DriverDashboardState();
}

class _DriverDashboardState extends State<DriverDashboard> {
  List<Map<String, dynamic>> _pages;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _selectedPageIndex = widget.pageIndex;

    _pages = [
      {"title": "Home", "screen": DriverHomeScreen()},
      {"title": "Trip", "screen": TripScreen()},
      {"title": "Chat", "screen": DriverChatScreen()},
      {"title": "Profile", "screen": DriverProfileScreen()},
    ];
  }

  Future<bool> _onBackPressed() {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(
              "Exit",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text(
              "Are you sure you want to exit the App?",
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              FlatButton(
                child: Text("NO"),
                onPressed: () {
                  return Navigator.of(context).pop(false);
                },
              ),
              FlatButton(
                child: Text("YES"),
                onPressed: () {
                  return Navigator.of(context).pop(true);
                },
              ),
            ],
          ),
        ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        key: _scaffoldKey,
        // appBar: AppBar(
        //   backgroundColor: Colors.white10,
        //   title: Text("${_pages[_selectedPageIndex]["title"]}"),
        //   centerTitle: true,
        //   elevation: 0,
        //   leading: IconButton(
        //     icon: Icon(Icons.menu),
        //     onPressed: () {
        //       _scaffoldKey.currentState.openDrawer();
        //     },
        //   ),
        // ),
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            elevation: 0,
            onTap: _selectPage,
            currentIndex: _selectedPageIndex,
            selectedItemColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/home.png",
                  height: 16,
                  fit: BoxFit.contain,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Home",
                  ),
                ),
                activeIcon: Image.asset("assets/icons/home.png",
                    height: 20,
                    fit: BoxFit.contain,
                    color: Theme.of(context).primaryColor),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/trip.png",
                  height: 16,
                  fit: BoxFit.contain,
                  color: Colors.grey,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Trip",
                  ),
                ),
                activeIcon: Image.asset("assets/icons/trip.png",
                    height: 20,
                    fit: BoxFit.contain,
                    color: Theme.of(context).primaryColor),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/chat.png",
                  height: 16,
                  fit: BoxFit.contain,
                  color: Colors.grey,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Chat",
                  ),
                ),
                activeIcon: Image.asset("assets/icons/chat.png",
                    height: 20,
                    fit: BoxFit.contain,
                    color: Theme.of(context).primaryColor),
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/icons/profile.png",
                  height: 16,
                  fit: BoxFit.contain,
                  color: Colors.grey,
                ),
                title: Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    "Profile",
                  ),
                ),
                activeIcon: Image.asset("assets/icons/profile.png",
                    height: 20,
                    fit: BoxFit.contain,
                    color: Theme.of(context).primaryColor),
              ),
            ],
          ),
        ),
        body: _pages[_selectedPageIndex]["screen"],
      ),
    );
  }
}
