import 'dart:io';
import 'package:flutter/material.dart';
import 'package:se380_project/Screens/addEmployee_screen.dart';
import 'package:se380_project/Screens/display_employee.dart';
import 'package:se380_project/Screens/print_file_generation.dart';
import 'employee_operations.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;



class GeneralEmployeeScreen extends StatefulWidget {
 const GeneralEmployeeScreen({super.key});




  @override
  _GeneralEmployeeScreenState createState() => _GeneralEmployeeScreenState();
}


class _GeneralEmployeeScreenState extends State<GeneralEmployeeScreen> {
  List<List<dynamic>> employees = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Employee Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DisplayEmployeeScreen()));
                  },
                  child: Text("Display PDF"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal, // Change this color to the desired background color
                  ),
                ),
                SizedBox(width: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }

    }


