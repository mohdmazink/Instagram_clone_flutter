import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagScreen extends StatefulWidget {
  const TagScreen({super.key});

  @override
  State<TagScreen> createState() => _TagScreenState();
}

class _TagScreenState extends State<TagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Tag screen")));
  }
}
