import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo_app/controller/auth/google_sign_in.dart';

class LoginBottomSheet extends StatelessWidget {
  Authcontroller authcontroller = Authcontroller();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      height: 120,
      child: OutlinedButton.icon(
        onPressed: () {
          authcontroller.googleLogin();
          print('pressed loginn');
        },
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white54,
          side: const BorderSide(width: 1),
        ),
        icon: const Icon(
          FontAwesomeIcons.google,
          color: Colors.green,
          size: 30,
        ),
        label: const Text(
          'Sign In With Google',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
