import 'package:flutter/material.dart';
import 'package:notatoin_app_front_end/widgets/otp_submit_button.dart';

class OTP_screen extends StatelessWidget {
  const OTP_screen({super.key});

  // Corrected the case mismatch in the method name
  void otpButton() {
    // Add logic for what happens when the OTP is submitted
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          true, // Allow the page to adjust when the keyboard opens
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      ),
      body: SingleChildScrollView(
        // Ensures scrolling if content overflows
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20.0), // Add padding to the sides for better spacing
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.start, // Aligns content at the top
            children: [
              const SizedBox(height: 20), // Add some space from the top
              const Text(
                'Verify Your Email Address',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  height: 16), // Add some spacing between the text elements
              const Text(
                'Please Enter the 6-digit code we sent to your email address',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                  height: 16), // Add some spacing between the text elements

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counterText: "", // Hides the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                   SizedBox(width: 15), // Spacing between OTP boxes
                  SizedBox(
                    width: 40,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: "", // Hides the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), // Spacing between OTP boxes
                  SizedBox(
                    width: 40,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: "", // Hides the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), // Spacing between OTP boxes
                  SizedBox(
                    width: 40,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: "", // Hides the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), // Spacing between OTP boxes
                  SizedBox(
                    width: 40,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: "", // Hides the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15), // Spacing between OTP boxes
                  SizedBox(
                    width: 40,
                    child: TextField(
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counterText: "", // Hides the character counter
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24), // Space before the submit button
              OtpSubmitButton(
                onTap: otpButton, // Using the corrected method name
              ),
            ],
          ),
        ),
      ),
    );
  }
}
