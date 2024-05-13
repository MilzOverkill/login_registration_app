import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller; //access what we type in text field
  final String hintText; // a hint as in what should be typed in this text field
  final bool obscureText; // hide the characters when u type in a password

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,

    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),

          //when u click on the text filed it becomes the focus border
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500])
        ),
      ),
    );
  }
}
