import 'package:flutter/material.dart';
import 'package:human_face_generator_app/homeScreen.dart';
import 'package:splashscreen/splashscreen.dart';


class MySplashScreen extends StatefulWidget
{
  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen>
{
  @override
  Widget build(BuildContext context)
  {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: HomeScreen(),
      imageBackground: Image.asset("assets/la-noire.jpg").image,
      useLoader: true,
      loaderColor: Colors.red,
      loadingText: Text(
        "Developer : Maaz Abdul Malik",
        style: TextStyle(
          color: Colors.yellowAccent,
          fontSize: 16.0,
        ),
      ),
    );
  }
}
