import 'package:flutter/material.dart';
import 'package:notatoin_app_front_end/screens/forgot_password.dart';
import 'package:notatoin_app_front_end/screens/register.dart';
import 'package:notatoin_app_front_end/widgets/google_signin_button.dart';
import 'package:notatoin_app_front_end/widgets/my_text_field.dart';
import 'package:notatoin_app_front_end/widgets/sign_in_button.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  // Text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // Sign in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 233, 233, 233),
      body: Center(
        child: SingleChildScrollView(  // Added SingleChildScrollView here
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              // Logo
              Container(
                child: Lottie.network(
                  'https://lottie.host/0bf97333-3d2c-418b-bed2-c6865ff268f1/gFEbugWyXX.json',
                  height: 300,
                ),
              ),
              // Welcome back, you've been missed!
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(color: Colors.grey[800], fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              // Username textfield
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              // Password textfield
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              // Forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigate to ForgotPassword page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // Sign in button
              SignInButton(
                onTap: signUserIn,
              ),
              const SizedBox(
                height: 25,
              ),
              // Or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
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
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[700]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Google Sign-in button
              GoogleSignInButton(
                  imagePath: 'lib/images/google-logo-icon-png-svg.png'),
              const SizedBox(
                height: 20,
              ),
              // Register section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Don't have an account? Register
                  Text(
                    "Not a member? ",
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  // GestureDetector for Register navigation
                  GestureDetector(
                    onTap: () {
                      // Navigate to the RegisterPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
