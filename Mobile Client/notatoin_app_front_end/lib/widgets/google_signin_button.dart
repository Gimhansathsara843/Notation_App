import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  final String imagePath; // Declare imagePath as a String

  const GoogleSignInButton({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      //onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),

        decoration: BoxDecoration(
          color:  Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade300),
        ),

        child: Center(
          child: Image.asset(
            imagePath,
            height: 25, // Adjusted to better fit the button
          ),
        ),
      ),
    );


  }
}
