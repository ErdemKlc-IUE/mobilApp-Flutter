import 'dart:io';

import 'package:flutter/material.dart';
import 'package:se380_project/Screens/login_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();


}

class _ProfileScreenState extends State<ProfileScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
              ),
              child: Icon(
                Icons.person,
                size: 75.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'NAME-SURNAME',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
                backgroundColor: Colors.teal[100],
                textStyle: TextStyle(color: Colors.indigo[800])
              ),
              child: Text('Change Password'),
              onPressed: () {
                //TODO
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: Colors.teal[100],
                  textStyle: TextStyle(color: Colors.indigo[800])
              ),
              child: Text('Log Out'),
              onPressed: () {
                //TODO
              },
            ),
          ],
        ),
      ),

    );
  }
}