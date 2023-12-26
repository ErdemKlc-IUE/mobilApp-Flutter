import 'dart:io';

import 'package:flutter/material.dart';

import 'options_screen.dart';

class EmployeeOperationsScreen extends StatefulWidget {
  const EmployeeOperationsScreen({super.key});

  @override
  _EmployeeOperationsScreenState createState() => _EmployeeOperationsScreenState();
}


class _EmployeeOperationsScreenState extends State<EmployeeOperationsScreen> {

  final List<String> employeeList = [
    'Employee 1',
    'Employee 2',
    'Employee 3',
    'Employee 4',
    'Employee 5',
    'Employee 6'
    ];

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
                      // Action when a button is pressed
                      print('Button ${index + 1} pressed');
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
          SizedBox(height:80), //spacing between the button list and icon buttons
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OptionsScreen()));
                  },
                ),
              ),

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
                  icon: Icon(Icons.edit),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OptionsScreen()));
                  },
                ),
              ),

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
                  icon: Icon(Icons.delete_forever),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OptionsScreen()));
                  },
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}