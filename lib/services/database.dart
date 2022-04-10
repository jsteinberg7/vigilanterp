import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class DatabaseService {
// upload selected image to Firebse Storage, return URL
  static Future<void> uploadVideo(File image) async {
    FirebaseStorage firebaseStorage = FirebaseStorage.instance;
    // upload image
    File file = new File(image.path);
    await firebaseStorage
        .ref()
        .child("Recordings/${DateTime.now().millisecondsSinceEpoch}")
        .putFile(file);
  }

  static Future<void> createReport(
      {required String category,
      required double latitude,
      required double longitude,
      required String description,
      required bool videoRef}) async {
    String id = DateTime.now().millisecondsSinceEpoch.toString();

    // store reference to all user files
    CollectionReference reportsCollection =
        FirebaseFirestore.instance.collection("reports");
    return await reportsCollection.doc(id).set(<String, dynamic>{
      "Category": category,
      "Description": description,
      "Location": GeoPoint(latitude, longitude),
      "Video ID": id
    });
  }
}
