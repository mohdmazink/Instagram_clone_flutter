import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/Screens/Signup/signup_screen.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';
import '../BottonNav/bottonnav.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: UiHelper.CustomTextButton(
                    text: "Forgot password?",
                    callback: () {},
                  ),
                ),
              ],
            ),
            UiHelper.CustomButton(
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottonnavScreen()),
                );
              },
              buttonname: "Login",
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomImage(imgurl: 'facebook.png'),
                UiHelper.CustomTextButton(
                  text: "Log in with Facebook",
                  callback: () {},
                ),
              ],
            ),

            SizedBox(height: 10),

            Text("or"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account?", style: TextStyle(fontSize: 14)),
                UiHelper.CustomTextButton(
                  text: "Sign up",
                  callback: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen(),
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
