import 'package:flutter/material.dart';

class HeartScreen extends StatefulWidget {
  const HeartScreen({super.key});

  @override
  State<HeartScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HeartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Heart screen")));
  }
}
