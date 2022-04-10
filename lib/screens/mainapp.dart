import 'dart:async';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:sus_logger/screens/report.dart';
import 'package:sus_logger/screens/map.dart';
import '../constants/utilities.dart';
import '../services/url.dart';

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
  }

  List<Widget> screens = [
    ReportScreen(),
    MapScreen(),
  ]; // list of screens (change through indexing)

  int currScreen = 0;

  PageController pageController = new PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    double height = Utilities.getHeight(context);
    double width = Utilities.getWidth(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: width / 12,
          ),
          Container(
            // decoration: BoxDecoration(border: Border.all()),
            width: 100,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton(
                elevation: 15,
                backgroundColor: Colors.red,
                onPressed: () {
                  URL.launchURL("tel://" + "5713351885");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Call UMPD",
                          style: TextStyle(
                              fontSize: width / 70,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height / 300),
                          child: Icon(
                            Icons.phone,
                            size: width / 18,
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ),
          SizedBox(
            width: width / 2.8,
          ),
          Container(
            // decoration: BoxDecoration(border: Border.all()),
            width: 100,
            height: 100,
            child: FittedBox(
              child: FloatingActionButton(
                elevation: 15,
                backgroundColor: Colors.red,
                onPressed: () {
                  URL.launchURL("tel://" + "911");
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Call 911",
                          style: TextStyle(
                              fontSize: width / 50,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height / 300),
                          child: Icon(
                            Icons.phone,
                            size: width / 18,
                          ),
                        )
                      ]),
                ),
              ),
            ),
          ),
        ],
      ),
      appBar: PreferredSize(
          //Create "Beta" icon on left
          preferredSize: Size(
              Utilities.getWidth(context), Utilities.getHeight(context) / 16),
          child: AppBar(
            leadingWidth: 100,
            elevation: 7,
            shadowColor: Colors.black,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Vigilanterp"),
                Image.asset(
                  "assets/images/incognito.png",
                  height: Utilities.getHeight(context) / 22,
                ),
              ],
            ),
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            centerTitle: true,
          )),
      backgroundColor: Theme.of(context).backgroundColor,
      // backgroundColor: Colors.white,

      // {Changed color}
      body: Container(
        child: PageView(
          children: screens,
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              currScreen = index;
            });
          },
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: Utilities.getHeight(context) / 12.5,
        child: CustomNavigationBar(
          iconSize: Utilities.getHeight(context) / 35,
          selectedColor: Colors.red[300],
          unSelectedColor: Colors.grey[500],
          strokeColor: Colors.yellow,
          // backgroundColor: Colors.grey[900],
          items: [
            CustomNavigationBarItem(
                icon: Icon(
                  Icons.report,
                ),
                title: Text("Report")),
            CustomNavigationBarItem(
                title: Text("Incident Map"), icon: Icon(Icons.location_on)),
          ],
          currentIndex: currScreen,
          onTap: (index) {
            setState(() {
              pageController.jumpToPage(index);
              currScreen = index;
            });
          },
        ),
      ),
    );
  }
}
