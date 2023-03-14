import 'package:flutter/material.dart';
import 'package:group/presentation/screens/app/app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("favorites");
  runApp(GroupApp());
}
