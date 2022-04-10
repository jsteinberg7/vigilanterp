// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sus_logger/screens/camera_page.dart';

import '../services/database.dart';

class Popups {
  static void incidentForm(
      BuildContext context, String incident, height, double width) {
    bool video_recorded = false;
    TextEditingController descriptionController = TextEditingController();
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            // backgroundColor: Colors.blueGrey[900],
            title: Text(
              incident + " report",
            ),
            //   style: TextStyle(
            //       //color: Colors.cyan[600],
            //       //fontWeight: FontWeight.bold),
            // ),
            content: Container(
              height: height / 2.5,
              child: Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: TextField(
                          decoration:
                              InputDecoration(hintText: "What happened?"),
                          maxLines: 3,
                          controller: descriptionController)),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: video_recorded ? Colors.red : Colors.white),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        video_recorded = true;
                        return CameraPage(); // Returning the ResetPassword screen
                      }));
                    },
                    child: Row(children: [
                      Text(video_recorded ? "Video Recorded" : "Record Video"),
                      Icon(Icons.video_call)
                    ]),
                  )
                ],
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  TextButton(
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: width / 20, color: Colors.red),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  TextButton(
                    child: Text(
                      'Submit',
                      style:
                          TextStyle(fontSize: width / 20, color: Colors.blue),
                    ),
                    onPressed: () async {
                      //DatabaseService.
                      //submit to cloud
                      DatabaseService.createReport(
                          category: incident,
                          latitude: 38.9955427,
                          longitude: -76.941367,
                          description: descriptionController.text,
                          videoRef: true);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ],
          );
        });
  }
}
