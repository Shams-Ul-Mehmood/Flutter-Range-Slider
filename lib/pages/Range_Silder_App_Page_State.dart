import 'dart:math';

import 'package:flutter/material.dart';

import 'Range_Silder_App_State.dart';

class Range_Silder_App_Page_State extends State<Range_Silder_App_Page>
{
   RangeValues valuesRange = RangeValues(0,1);

  @override
  Widget build( BuildContext buildContext)
  {
    RangeLabels rangeLabels = RangeLabels( valuesRange.start.toString() , valuesRange.end.toString() );
    return Scaffold(
      appBar: AppBar(
        primary: true,
        title: Text("Range Silder", style: TextStyle( fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white ),),
        elevation: 5,
        centerTitle: true,
        titleSpacing: 6,
        backgroundColor: Colors.lightBlue,
      ),
      primary: true,
      backgroundColor: Colors.white,
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: RangeSlider(
                values: valuesRange,
                labels: rangeLabels,
                activeColor: Colors.red,
                inactiveColor: Colors.red.shade100,
                divisions: 10,
                // min: 0,
                // max: 200,
                onChanged: (newValue){
                  valuesRange = newValue;
                  print("Start-Value = ${newValue.start} <-------> End-Value = ${newValue.end}");
                  setState(() {});
                },
              // onChangeEnd: (newValue){},
              // onChangeStart: (newValue) {},
            ),
          ),
    ),
    );
  }
}