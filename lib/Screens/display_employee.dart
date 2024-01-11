import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:se380_project/Screens/addCheckInOut_screen.dart';

class DisplayEmployeeScreen extends StatefulWidget {
  const DisplayEmployeeScreen({super.key});

  @override
  _DisplayEmployeeScreenState createState() => _DisplayEmployeeScreenState();
}


class _DisplayEmployeeScreenState extends State<DisplayEmployeeScreen> {


  late List<String> choices;
  late String selectedChoice;

  late List<Map<String, dynamic>> employees;

  @override
  void initState() {
    super.initState();
    // Fetch employee data from Firebase or any other source
    employees = [
      {
        'name': 'John Smith',
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

  pw.Document generatePdf() {
    final pdf = pw.Document();

    for (var employee in employees) {
      pdf.addPage(
        pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (context) {
            return pw.Column(
              children: [
                pw.Text('Employee Information',
                    style: pw.TextStyle(fontSize: 20, fontWeight: pw.FontWeight.bold)),
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

  void _displayEmployees() async {
    final pdf = generatePdf();

    // Use the `printing` package to display the PDF
    await Printing.layoutPdf(
      onLayout: (format) async => pdf.save(),
    );

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Employee Screen'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(height: 60),
          Container(
            child: SingleChildScrollView(),
            width: 300.0,
            height: 420.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1.0),
            ),
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 50,
                width: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.teal,
                ),
                child: ElevatedButton(
                  child: Text('Display'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  ),
                  onPressed: _displayEmployees,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


  PdfPreview({required pw.Document pdf}) {
  }
