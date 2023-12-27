import 'dart:io';

import 'package:flutter/material.dart';
import 'package:se380_project/Screens/addCheckInOut_screen.dart';
import 'package:se380_project/Screens/editCheckInOut_screen.dart';
import 'package:se380_project/Screens/employee_operations.dart';
import 'package:se380_project/Screens/info_screen.dart';

class Check_In_Out_Screen extends StatefulWidget {
  const Check_In_Out_Screen({super.key});

  static String date = "";
  static String enterHour = "";
  static String exitHour = "";

  static int index= 0;




  static getExitHour() {
    return _Check_In_Out_ScreenState.exitHourList.elementAt(index);
  }

  static getEnterHour() {
    return _Check_In_Out_ScreenState.enterHourList.elementAt(index);
  }

  static getDate() {return _Check_In_Out_ScreenState.dateList.elementAt(index);}




  static void addtoList (String date, String enterHour, String exitHour){
    _Check_In_Out_ScreenState.dateList.add(date);
    _Check_In_Out_ScreenState.enterHourList.add(enterHour);
    _Check_In_Out_ScreenState.exitHourList.add(exitHour);
  }

  static void removeFromList (){
    _Check_In_Out_ScreenState.dateList.removeAt(index);
    _Check_In_Out_ScreenState.enterHourList.removeAt(index);
    _Check_In_Out_ScreenState.exitHourList.removeAt(index);
  }

  static void changeDate (){
    _Check_In_Out_ScreenState.dateList[index] = date;
  }
  static void changeEnterHour (){
    _Check_In_Out_ScreenState.enterHourList[index] = enterHour;
  }
  static void changeExitHour (){
    _Check_In_Out_ScreenState.exitHourList[index] = exitHour;
  }

  @override
  _Check_In_Out_ScreenState createState() => _Check_In_Out_ScreenState();
}


class _Check_In_Out_ScreenState extends State<Check_In_Out_Screen> {

  static List<String> dateList = [];
  static List<String> enterHourList = [];
  static List<String> exitHourList = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-In/Out List'),
      ),
      body: Column(
        children: [
          SizedBox(height:60),
          Container(
            width: 300.0,
            height: 420.0,


            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1.0),
            ),

            //height of the box to accommodate buttons
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: dateList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal[50],
                      minimumSize: Size(300, 85),

                    ),
                    onPressed: () {
                      EmployeeOperationsScreen.index = index;
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(dateList.elementAt(index)),
                            content: Text('Name: ' + dateList.elementAt(index) +
                                '\nCard Number: ' + enterHourList.elementAt(index)+
                                '\nHourly Salary: ' + exitHourList.elementAt(index),
                              style: const TextStyle(
                                  fontSize: 20
                              ),),
                            actions: <Widget>[

                              TextButton(
                                child: Text('Edit'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => EditCheckInOut()));
                                },
                              ),

                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),


                            ],
                          );
                        },
                      );
                    },
                    child: Text(dateList[index],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height:35), //spacing between the button list and icon buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(

                height: 80,
                width: 80,

                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal,
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,

                  iconSize: 55.0,
                  color: Colors.white,
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddCheckInOut()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 60.0,
              height: 90.0,

              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),

              child: IconButton(
                  padding: EdgeInsets.zero,
                  iconSize: 50.0,
                  color: Colors.white,

                  icon: Icon(Icons.question_mark),

                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => InfoScreen()));
                  }
              ),
            ),
          ],
        ),


      ),
    );
  }
}