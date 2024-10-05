import 'package:chapter_material_cupertino_ui/dayFirst/DateScrren.dart';
import 'package:chapter_material_cupertino_ui/dayFirst/cupertion_dayfirst/ios_DatePicker.dart';
import 'package:chapter_material_cupertino_ui/dayFirst/cupertion_dayfirst/ios_TimePicker.dart';
import 'package:chapter_material_cupertino_ui/dayFirst/cupertion_dayfirst/ios_dailog.dart';
import 'package:chapter_material_cupertino_ui/dayFirst/dailog.dart';
import 'package:chapter_material_cupertino_ui/dayFirst/timePicker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      routes: {
        '/':(context)=>DateScreen(),
        '/time':(context)=>TimepickerScreen(),
        '/da':(context)=>DailogScreen(),
        '/iosDate':(context)=>iosDatePickerScreen(),
       '/iosTime' :(context)=>iosTimePickerScreen(),
       '/iosLog' :(context)=>iosDailogScreen(),
      },
    );
  }
}

