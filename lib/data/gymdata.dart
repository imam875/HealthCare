
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:healthpro/model/gymmodel.dart';

Future<List<gymmodel>> gymfunction() async {
  final gymProduct = await rootBundle.loadString("jsondata/gyminfo.json");
  final gymlist = json.decode(gymProduct) as List<dynamic>;
  return gymlist.map((e) => gymmodel.fromJson(e)).toList();
}