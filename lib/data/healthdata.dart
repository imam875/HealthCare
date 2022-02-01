

import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:healthpro/model/healthmodel.dart';

Future<List<HealthModel>> healthfunction() async {
  final healthProduct = await rootBundle.loadString("jsondata/healthinfo.json");
  final healthlist = json.decode(healthProduct) as List<dynamic>;
  return healthlist.map((e) => HealthModel.fromJson(e)).toList();
}