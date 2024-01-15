//TODO: add your view model class here
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school_task/model/school_model.dart';

class SchoolViewModel extends ChangeNotifier {
  late School _school;
  School get school => _school;

  Future<void> fetchSchool()async {
    final jsonString = await rootBundle.loadString('lib/model/school_model.json');
    final jsonData = json.decode(jsonString) as List<dynamic>;
    // as the json is a list of objects and we need only one object from the json not a list.
    _school = School.fromJson(jsonData[0]);
    notifyListeners();
  }
}