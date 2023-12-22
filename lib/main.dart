import 'dart:io';

import 'package:flutter/material.dart';
import 'Screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(apiKey: 'AIzaSyCPVzqo3Oc8vPvJAEzYxrO4EruxVRk8Amw', appId: '1:720857719098:android:f4f10afb2c9834b20cf003', messagingSenderId: '720857719098', projectId: 'se380project-c9ac4', storageBucket: "se380project-c9ac4.appspot.com",));
  runApp(const MyApp());
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


