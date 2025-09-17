import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/Screens/HeartScreen/Following/following_screen.dart';
import 'package:instgram_clone_flutter/Screens/HeartScreen/You/you_screen.dart';

class HeartScreen extends StatefulWidget {
  const HeartScreen({super.key});

  @override
  State<HeartScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HeartScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            tabs: [
              Tab(text: "Following"),
              Tab(text: "You"),
            ],
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
          ),
        ),
        body: TabBarView(children: [FollowingScreen(), YouScreen()]),
      ),
    );
  }
}
