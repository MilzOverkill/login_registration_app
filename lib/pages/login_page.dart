import 'package:flutter/material.dart';
import 'package:login_registration_app/components/my_button.dart';
import 'package:login_registration_app/components/my_textfiled.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        // used the widget safe area to avoid the notch areas
        child: Center(
          child: Column(children: [
            const SizedBox(height: 50),

            //logo

            const Icon(
              Icons.lock,
              size: 100,
            ),

            const SizedBox(height: 50),

            //welcome text
            Text(
              "Welcome back you've been missed!",
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            //username textfield
            MyTextField(
              controller: usernameController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfiled
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
              
            ),

            const SizedBox(height: 10),

            //forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row( // to get the forgot password to the side since we initially made it center
              mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password?',
                  style: TextStyle(color: Colors.grey[600]),
                  
                  ),
                  
                ],
              ),
            ),

            const SizedBox(height: 25),


            //sign in button
            MyButton(),

            //or continue with

            //google + apple sign in buttons

            //not a member? register now
          ]),
        ),
      ),
    );
  }
}
