
import 'package:flutter/material.dart';
import 'package:se380_project/Screens/general_employee_screen.dart';
import 'package:se380_project/Screens/personal_employee_screen.dart';

class ExcelFileGenerationScreen extends StatefulWidget {
  const ExcelFileGenerationScreen({super.key});

  @override
  _ExcelFileGenerationScreenState createState() => _ExcelFileGenerationScreenState();
}


class _ExcelFileGenerationScreenState extends State<ExcelFileGenerationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Excel File Generation'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('General'),
              style: ElevatedButton.styleFrom(
                primary: Colors.teal, // Change this color to the desired background color
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GeneralEmployeeScreen()));
              },
            ),
            SizedBox(height: 40),
            ElevatedButton(
              child: Text('Personal'),
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .teal, // Change this color to the desired background color
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PersonalEmployeeScreen()));
              },
            ),
            SizedBox(height: 40),
    ]
      ),

        ),
    );

  }

}



