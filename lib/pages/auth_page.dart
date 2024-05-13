import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:login_registration_app/pages/home_page.dart';
import 'package:login_registration_app/pages/login_or_register_page.dart';
import 'package:login_registration_app/pages/login_page.dart';

//check if user is logged in or not

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance
                .authStateChanges(), //checks of the user is logged in or not the state
            builder: (context, snapshot) {
              // user is logged in
              if (snapshot.hasData) {
                return HomePage();

                //user is NOT logged in

              } else {
                return LoginOrRegisterPage();
              }
            }));
  }
}
