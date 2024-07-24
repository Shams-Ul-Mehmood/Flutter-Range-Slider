import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Range_Silder_App_State.dart';

class Range_Silder_App extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: "Multiple Screens Data Sharing Application",
      color: Colors.indigoAccent,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
      ),
      home: Range_Silder_App_Page(),
    );
  }
}