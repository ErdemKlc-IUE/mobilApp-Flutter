

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;



class PersonalEmployeeScreen extends StatefulWidget {
  const PersonalEmployeeScreen({super.key});

  @override
  _PersonalEmployeeScreenState createState() => _PersonalEmployeeScreenState();
}


class _PersonalEmployeeScreenState extends State<PersonalEmployeeScreen> {


  late List<String> choices;
  late String selectedChoice;
  late List<Map<String, dynamic>> employees;

  @override
  void initState() {
    super.initState();
    // Fetch employee data from Firebase or any other source
    employees = [
      {
        'name': 'John Doe',
        'cardNumber': '1234',
        'enterHour': '09:00 AM',
        'exitHour': '05:00 PM',
        'netSalary': '1000',
        'hourlySalary': '10'
      },
      {
        'name': 'Jane Smith',
        'cardNumber': '5678',
        'enterHour': '08:30 AM',
        'exitHour': '04:30 PM',
        'netSalary': '1200',
        'hourlySalary': '12'
      },
      // Add more employee details as needed
    ];
  }


  void _displayEmployees() {
    final pdf = generatePdf();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PdfPreview(pdf: pdf)));
  }

  pw.Document generatePdf() {
    final pdf = pw.Document();

    for (var employee in employees) {
      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (context) {
            return pw.Column(
              children: [
                pw.Text('Employee Information', style: pw.TextStyle(
                    fontSize: 20, fontWeight: pw.FontWeight.bold)),
                pw.SizedBox(height: 10),
                pw.Text('Name: ${employee['name']}'),
                pw.Text('Card Number: ${employee['cardNumber']}'),
                pw.Text('Enter Hour: ${employee['enterHour']}'),
                pw.Text('Exit Hour: ${employee['exitHour']}'),
                pw.Text('Net Salary: ${employee['netSalary']}'),
                pw.Text('Hourly Salary: ${employee['hourlySalary']}'),
              ],
            );
          },
        ),
      );
    }

    return pdf;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Personal Employee Screen'),
          backgroundColor: Colors.teal,
        ),

        body: Column(

            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                  ),
                  const Text(
                    'Employee: ',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 10.0),
                  Container(
                    width: 250.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey, width: 1.0),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        value: selectedChoice,
                        onChanged: (String? newValue) {
                          if (newValue != null) {
                            setState(() {
                              selectedChoice = newValue;
                            });
                          }
                        },
                        items: choices.map<DropdownMenuItem<String>>((
                            String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),

                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

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
                      child: SingleChildScrollView(
                    child: Column(
                    children: [
                    //put the firebase data here
                    ElevatedButton(
                      onPressed: _displayEmployees,
                      child: Text('Display'),
                    ),
                  ],
              ),
    ),
                      ),
                  ]
              )
            ]
        )
    );
  }

  PdfPreview({required pw.Document pdf}) {
  }
}



