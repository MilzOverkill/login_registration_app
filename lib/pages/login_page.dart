import 'package:flutter/material.dart';
import 'package:login_registration_app/components/my_button.dart';
import 'package:login_registration_app/components/my_textfiled.dart';
import 'package:login_registration_app/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in
  void signUserIn(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        // used the widget safe area to avoid the notch areas
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // all to the middle so easy with different screen sizes
            children: [
            
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


            //log in button
            MyButton(
              onTap: signUserIn,
            ),

            const SizedBox(height: 50),

            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:25.0),
              child: Row(
                children: [
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
            
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color:Colors.grey[700]),

                      ),
                  ),
            
                  Expanded(
                    child:Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  
                ],
              ),
            ),

            SizedBox(height: 50),

            //google sign in buttons
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(imagePath: 'assets/images/google.png'),

                SizedBox(height: 10),
              ],
            ),

            const SizedBox(height: 50),

            

            





            //not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(color: Colors.grey[700]),
                  ),
                const SizedBox(width:4),
                const Text(
                  'Register now',
                  style:TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold
                  ),
                  
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
