import 'package:flutter/material.dart';
import 'package:human_face_generator_app/Screens/Login/login_screen.dart';
import 'package:human_face_generator_app/Screens/Signup/signup_screen.dart';
import 'package:human_face_generator_app/Screens/Welcome/components/background.dart';
import 'package:human_face_generator_app/components/rounded_button.dart';
import 'package:human_face_generator_app/constants.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Background(

      child: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sketch To Real Human Face Convertor Application",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: size.height * 0.05),

            Image.asset(
              "assets/download.jpg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
