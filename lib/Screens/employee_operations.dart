import 'dart:io';

import 'package:flutter/material.dart';
import 'package:se380_project/Screens/addEmployee_screen.dart';
import 'package:se380_project/Screens/editEmployee_Screen.dart';

import 'info_screen.dart';

class EmployeeOperationsScreen extends StatefulWidget {
  EmployeeOperationsScreen({super.key});

  static String name = "";
  static String cardNumber = "";
  static String hourlySalary = "";

  static int index= 0;


  static void addtoList (String name, String cardNumber, String hourlySalary){
    _EmployeeOperationsScreenState.employeeList.add(name);
    _EmployeeOperationsScreenState.cardNumberList.add(cardNumber);
    _EmployeeOperationsScreenState.hourlySalaryList.add(hourlySalary);
}

  static void removeFromList (){
    _EmployeeOperationsScreenState.employeeList.removeAt(index);
    _EmployeeOperationsScreenState.cardNumberList.removeAt(index);
    _EmployeeOperationsScreenState.hourlySalaryList.removeAt(index);
  }

  static void changeName (){
    _EmployeeOperationsScreenState.employeeList[index] = name;
  }
  static void changeCardNumber (){
    _EmployeeOperationsScreenState.cardNumberList[index] = cardNumber;
  }
  static void changeHourlySalary (){
    _EmployeeOperationsScreenState.hourlySalaryList[index] = hourlySalary;
  }

  static String getName (){
    return _EmployeeOperationsScreenState.employeeList.elementAt(index);
  }
  static String getCardNumber (){
    return _EmployeeOperationsScreenState.cardNumberList.elementAt(index);
  }
  static String getHourlySalary (){
    return _EmployeeOperationsScreenState.hourlySalaryList.elementAt(index);
  }

  static List<String> getEmployeeList(){
    return _EmployeeOperationsScreenState.employeeList;
  }



  @override
  _EmployeeOperationsScreenState createState() => _EmployeeOperationsScreenState();
}

class _EmployeeOperationsScreenState extends State<EmployeeOperationsScreen> {



  static List<String> employeeList = [];
  static List<String> cardNumberList = [];
  static List<String> hourlySalaryList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employee List'),
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
              itemCount: employeeList.length,
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
                            title: Text(employeeList.elementAt(index)),
                            content: Text('Name: ' + employeeList.elementAt(index) +
                                '\nCard Number: ' + cardNumberList.elementAt(index)+
                                '\nHourly Salary: ' + hourlySalaryList.elementAt(index),
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
                                      MaterialPageRoute(builder: (context) => EditEmployeeScreen()));
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
                    child: Text(employeeList[index],
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
                        MaterialPageRoute(builder: (context) => AddEmployeeScreen()));
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