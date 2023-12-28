import 'dart:io';

import 'package:flutter/material.dart';
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
              onPressed: () => _navigateToEmployeeOperationsPage(context),
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
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () => _emailEmployees(),
                  child: Icon(Icons.email),
                  style: ElevatedButton.styleFrom(
                    primary: Colors
                        .teal, // Change this color to the desired background color
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _generateExcelFile(),
                  child: Icon(Icons.file_download),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                ),
                SizedBox(width: 20),
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

  void _navigateToEmployeeOperationsPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmployeeOperationsScreen()),
    );
  }


  void _emailEmployees() async {

  }


  void _printEmployees() async {

  }

  void _generateExcelFile() async {

  }
}

