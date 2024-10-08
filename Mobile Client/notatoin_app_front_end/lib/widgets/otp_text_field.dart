import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  final TextEditingController controller;

  OTPTextField({
    required this.controller
  });

  @override
Widget build(BuildContext context) {
  return            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: TextField(
              controller: controller,
                      maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: "", // Hides the character counter
          border: OutlineInputBorder(),
        ),

              ),
           );


}
}