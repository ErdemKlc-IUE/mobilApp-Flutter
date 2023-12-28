import 'dart:io';

import 'package:flutter/material.dart';
import 'package:se380_project/DatabaseHelper.dart';
import 'Screens/login_screen.dart';


void main() async {
  runApp(const MyApp());
  await DatabaseHelper.init();
}




class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: LoginScreen(title: 'Login',)
    );

  }
}


