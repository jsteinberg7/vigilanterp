// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sus_logger/services/database.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/popups.dart';
import '../constants/utilities.dart';

class ReportScreen extends StatelessWidget {
  List incidents = [
    "Harrassment",
    "Theft",
    "Assault",
    "Sus_activity",
    "Vandalism",
  ];

  @override
  Widget build(BuildContext context) {
    double height = Utilities.getHeight(context);
    double width = Utilities.getWidth(context);

    return Container(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     Text("Report an incident..."),
          //   ],
          // ),
          Container(
            height: height / 1.5,
            // width: width / 2,
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return IncidentTile(
                    incident: incidents[index],
                    height: height,
                    width: width,
                  );
                },
                itemCount: incidents.length),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IncidentTile extends StatelessWidget {
  late String incident;

  late double height;

  late double width;

  @override
  IncidentTile(
      {Key? key,
      required String incident,
      required double height,
      required double width})
      : super(key: key) {
    // ignore: prefer_initializing_formals
    this.incident = incident;
    this.height = height;
    this.width = width;
  }

  @override
  Widget build(BuildContext context) {
    String newIncident;
    incident == "Sus_activity"
        ? newIncident = "sus activity"
        : newIncident = incident.toLowerCase();

    incident = incident.toLowerCase();
    // if (incident.contains('_')) {
    //   newIncident = incident.replaceAll("_", " ");
    // } else {
    //   newIncident = incident;
    // }

    return GestureDetector(
      onTap: () {
        Popups.incidentForm(context, incident, height, width);
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(width / 20.0, 10, width / 20.0, 0),
        child: Card(
          elevation: 5,
          child: Container(
            // decoration: BoxDecoration(border: Border.all()),
            height: height / 12,
            //width: wid,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/' + incident + '.png'),
                SizedBox(width: 4),
                Text("Report " + newIncident,
                    softWrap: false,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width / 18)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
