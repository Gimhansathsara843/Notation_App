import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notatoin_app_front_end/widgets/my_text_field.dart';
import 'package:notatoin_app_front_end/widgets/reset_password_button.dart';
import 'package:notatoin_app_front_end/screens/OTP_screen.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  final emailController = TextEditingController();

  // Modify resetPassword to accept BuildContext
  void resetPassword(BuildContext context) {
    print("send OTP");

    // Navigate to the OTP_screen after the OTP is sent
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OTP_screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 233, 233),
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          children: [
            // Lottie animation
            Container(
              child: Lottie.network(
                'https://lottie.host/f1e703d7-a2ad-430f-977a-89d6bf21a92b/o8R7jEompe.json',
                height: 230,
                width: 250,
              ),
            ),

            // Instruction text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Enter your email and we will send you a link to reset your password",
                style: TextStyle(color: Colors.grey, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 25),

            // Email text field
            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(height: 15),

            // Reset password button
            ResetPasswordButton(
              onTap: () {
                // Pass the current context to resetPassword function
                resetPassword(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
