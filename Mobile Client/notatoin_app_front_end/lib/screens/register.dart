import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notatoin_app_front_end/widgets/my_text_field.dart';
import 'package:notatoin_app_front_end/widgets/google_signin_button.dart';
import 'package:notatoin_app_front_end/widgets/sign_up_button.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

void signUserUp() {}

  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 233, 233),
        elevation: 0.0,
        
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 233, 233, 233),
      body: Center(
        child: Column(
          children: [
            //logo
            Container(
              child: Lottie.network(
                'https://lottie.host/1d7154ee-8f77-4262-9ba0-157a6d2532bd/2Mmoim7Qqd.json'
              ,
              height: 230),
              
            ),
            //welcome back, you've been missed!

            Text(
              "Let's get started, you've been missed!",
              style: TextStyle(color: Colors.grey[800], fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),

            //username textfield

            MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),

            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: "Password",
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),

            //confirm password textfield
                        MyTextField(
              controller: confirmpasswordController,
              hintText: "Confirm Password",
              obscureText: true,
            ),
            const SizedBox(
              height: 15,
            ),

                        const SizedBox(
              height: 15,
            ),


            //sing in button

            SignUpButton(
              onTap: signUserUp,
            ),
                        const SizedBox(
              height: 25,
            ),

            //or continue with
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
          color: Colors.grey[700],
        ),
      ),
    ],
  ),
),
                        const SizedBox(
              height: 20,
            ),

            //google + apple

GoogleSignInButton(imagePath: 'lib/images/google-logo-icon-png-svg.png'),
              

          ],
        ),
      ),
    );
  }
}