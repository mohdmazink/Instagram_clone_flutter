import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/Screens/Login/login_screen.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: 'Instagram_Logo.png'),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: usernameController,
              text: "Username",
              tohide: false,
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: emailController,
              text: "Email",
              tohide: false,
            ),
            SizedBox(height: 15),
            UiHelper.CustomTextField(
              controller: passwordController,
              text: "Password",
              tohide: false,
            ),

            SizedBox(height: 15),
            UiHelper.CustomButton(callback: () {}, buttonname: "Sign Up"),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontSize: 14),
                ),
                UiHelper.CustomTextButton(
                  text: "Login",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => LoginScreen(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
