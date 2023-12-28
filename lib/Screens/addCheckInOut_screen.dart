import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:se380_project/Screens/check_in_out.dart';
import 'package:se380_project/Screens/employee_operations.dart';


class AddCheckInOut extends StatefulWidget {
  const AddCheckInOut({super.key});

  @override
  _AddCheckInOutState createState() => _AddCheckInOutState();
}


class _AddCheckInOutState extends State<AddCheckInOut> {

  TextEditingController _dateController = TextEditingController();
  TextEditingController _enterHourController = TextEditingController();
  TextEditingController _exitHourController = TextEditingController();

  static String date = "";
  static String enterHour = "";
  static String exitHour = "";

  @override
  void dispose() {
    _dateController.dispose();
    _enterHourController.dispose();
    _exitHourController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Add Check-In/Out'),
      ),

      body: Column(

          children: [
          SizedBox(height:30),
      Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          controller: _dateController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Date"
          ),
        ),
      ),

      Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          controller: _enterHourController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Enter Hour"
          ),
        ),
      ),

      Padding(
        padding:
        const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: TextFormField(
          controller: _exitHourController,
          decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Exit Hour"
          ),
        ),
      ),

      const SizedBox(height:30),

      ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.teal[50],
            minimumSize: Size(185,50),
          ),
          onPressed: () {
            setState(() {
            date = _dateController.text;
            enterHour = _enterHourController.text;
            exitHour = _exitHourController.text;
            });

            if((date == null || date =="") && (enterHour == null || enterHour=="" ) && (exitHour == null || exitHour=="")){

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter Date!\n'
                              'Enter Enter Hour!\n'
                              'Enter Exit Hour!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else if((date == null || date=="") && (exitHour == null || exitHour=="")){

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter Date!\n'
                              'Enter Exit Hour!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else if((enterHour == null || enterHour=="") && (exitHour == null || exitHour=="")){

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter Card Number!\n'
                              'Enter Hourly Salary!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else if((date == null || date =="") && (enterHour == null || enterHour=="")){

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter Date!\n'
                              'Enter Enter Hour!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else if (date == null || date=="") {
              print('Please enter a date');

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter Date!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else if (enterHour == null || enterHour=="") {
              print('Please enter a enter Hour');

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter Enter Hour!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else if (exitHour == null || exitHour =="") {
              print('Please enter a exit hour');

              OverlayEntry overlayEntry = OverlayEntry(
                builder: (context) => Positioned(
                  top: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.2,
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height * 0.2,
                      color: Colors.teal,
                      child: const Center(
                        child: Text(
                          'Enter ,Exit Hour!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );

              Overlay.of(context)?.insert(overlayEntry);

              // Delay to remove the overlay after 2 seconds
              Future.delayed(Duration(seconds: 2), () {
                overlayEntry.remove();
              });
            }

            else{
              print(date);
              print(enterHour);
              print(exitHour);

              EmployeeOperationsScreen.name = date;
              EmployeeOperationsScreen.name = enterHour;
              EmployeeOperationsScreen.name = exitHour;
              EmployeeOperationsScreen.addtoList(date, enterHour, exitHour);

              Navigator.pop(context);

              Navigator.push(context, MaterialPageRoute(builder: (context) => Check_In_Out_Screen()));


            }
          },

        child: const Text("Save",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),

            const SizedBox(height:10),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal[50],
                minimumSize: Size(185,50),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Check_In_Out_Screen()));
              },
              child: const Text("Cancel",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
      ),
    );
  }
}

