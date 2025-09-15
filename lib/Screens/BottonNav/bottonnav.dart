import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/Screens/HeartScreen/heart_screen.dart';
import 'package:instgram_clone_flutter/Screens/HomeScreen/home_screen.dart';
import 'package:instgram_clone_flutter/Screens/PostScreen/post_screen.dart';
import 'package:instgram_clone_flutter/Screens/ProfileScreen/profile_screen.dart';
import 'package:instgram_clone_flutter/Screens/SearchScreen/search_screen.dart';

class BottonnavScreen extends StatefulWidget {
  const BottonnavScreen({super.key});

  @override
  State<BottonnavScreen> createState() => _BottonnavState();
}

class _BottonnavState extends State<BottonnavScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus_app),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: 'Profile',
          ),
        ],
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
