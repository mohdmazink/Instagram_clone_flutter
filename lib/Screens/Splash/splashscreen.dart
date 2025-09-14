import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/Screens/Login/login_screen.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        UiHelper.CustomImage(imgurl: 'logo.png'),
        UiHelper.CustomImage(imgurl: "Instagram_Logo.png"),
      ],
    );
  }
}
