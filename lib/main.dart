import 'package:flutter/material.dart';
import 'package:human_face_generator_app/Screens/Welcome/welcome_screen.dart';
import 'package:human_face_generator_app/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Human Face Generator App',

      theme: ThemeData(
        primarySwatch: Colors.blue,

        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,

      ),
      home: WelcomeScreen(),
    );
  }
}


