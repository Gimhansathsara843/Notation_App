import 'package:flutter/material.dart';

class SignUpButton extends StatelessWidget {

  final Function()? onTap;
  SignUpButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) { 

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),

        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade400),
        ),

        child: Center(
          child: const Text("Sign Up",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
                ),
        )
      ),
    );
} 

}
