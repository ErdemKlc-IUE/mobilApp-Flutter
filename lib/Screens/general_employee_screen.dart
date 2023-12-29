import 'dart:io';
import 'package:flutter/material.dart';
import 'package:se380_project/Screens/addEmployee_screen.dart';
import 'package:se380_project/Screens/excel_file_generation.dart';
import 'employee_operations.dart';

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
         ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmployeeOperationsScreen()));
              },
              child: Text('Go to Employee Operations'),
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .teal, // Change this color to the desired background color
              ),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => _generateExcelFile(),
                  child: Icon(Icons.file_download),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => _printEmployees(),
                  child: Icon(Icons.print),
                  style: ElevatedButton.styleFrom(
                    primary: Colors
                        .teal, // Change this color to the desired background color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }




  void _printEmployees() async {

  }

  void _generateExcelFile() async {

  }
}

