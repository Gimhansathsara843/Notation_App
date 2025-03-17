import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notatoin_app_front_end/screens/wrtting_notation.dart';
import 'package:notatoin_app_front_end/widgets/my_text_field.dart';
import 'package:notatoin_app_front_end/widgets/google_signin_button.dart';
import 'package:notatoin_app_front_end/widgets/sign_up_button.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  void signUserUp(BuildContext context) {

    // Simulate a successful registration
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => WrittingNotation()),
    );
  }


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        elevation: 0.0,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05, // 5% of screen width
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo
                Container(
                  child: Lottie.network(
                    'https://lottie.host/1d7154ee-8f77-4262-9ba0-157a6d2532bd/2Mmoim7Qqd.json',
                    height: screenHeight * 0.25, // 25% of screen height
                  ),
                ),
                const SizedBox(height: 20),

                // Welcome text
                Text(
                  "Let's get started, you've been missed!",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: screenWidth * 0.04, // 4% of screen width
                  ),
                ),
                const SizedBox(height: 20),

                // Email text field
                MyTextField(
                  controller: emailController,
                  hintText: "Email",
                  obscureText: false,
                ),
                const SizedBox(height: 10),

                // Password text field
                MyTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 10),

                // Confirm password text field
                MyTextField(
                  controller: confirmpasswordController,
                  hintText: "Confirm Password",
                  obscureText: true,
                ),
                const SizedBox(height: 15),

                // Sign up button
SignUpButton(
  onTap: () => signUserUp(context), // Pass the context here
),
                const SizedBox(height: 25),

                // Or continue with
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.05, // 5% of screen width
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[700],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          "Or continue with",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: screenWidth * 0.035, // 3.5% of screen width
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Google sign-in button
                GoogleSignInButton(
                  imagePath: 'lib/images/google-logo-icon-png-svg.png',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}