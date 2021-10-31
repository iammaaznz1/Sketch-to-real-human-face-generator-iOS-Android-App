import 'package:flutter/material.dart';
import 'package:human_face_generator_app/Screens/Login/components/background.dart';
import 'package:human_face_generator_app/Screens/Signup/signup_screen.dart';
import 'package:human_face_generator_app/components/already_have_an_account_acheck.dart';
import 'package:human_face_generator_app/components/rounded_button.dart';
import 'package:human_face_generator_app/components/rounded_input_field.dart';
import 'package:human_face_generator_app/components/rounded_password_field.dart';
import 'package:human_face_generator_app/splashScreen.dart';

import '../../../homeScreen.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN USING YOUR DETAILS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Image.asset(
              "assets/download.jpg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MySplashScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
