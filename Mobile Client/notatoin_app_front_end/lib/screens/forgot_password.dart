import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notatoin_app_front_end/widgets/my_text_field.dart';
import 'package:notatoin_app_front_end/widgets/reset_password_button.dart';
class ForgotPassword extends StatelessWidget {
  
     ForgotPassword({Key? key}) : super(key: key);

    final emailController=TextEditingController();

    void resetPassword(){
      print("reset password");
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color.fromARGB(255, 233, 233, 233),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 233, 233, 233),
        elevation: 0.0,
      ),
      


  body:Center(
    child:Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [

                    Container(
              child: Lottie.network(
                'https://lottie.host/f1e703d7-a2ad-430f-977a-89d6bf21a92b/o8R7jEompe.json'
              ,
              height: 230,
              width: 250
              ),
              
            ),

        
          
   Padding(
     padding: const EdgeInsets.symmetric(horizontal: 25.0),
     child: Text("Enter your email and we will send you a link to reset your password",
      style: TextStyle(color: Colors.grey, fontSize: 20),
     ),
   ),  
               const SizedBox(
              height: 25,
            ),

              MyTextField(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),
            const SizedBox(
              height: 15,
            ),

            //forgot password button
            ResetPasswordButton(
              onTap: resetPassword,
              ),
      ],
    )
 
  )
  
  
  

  
  


    );
  }
}