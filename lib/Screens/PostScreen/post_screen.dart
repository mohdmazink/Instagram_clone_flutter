import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("PostScreen")));
  }
}
