import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/Screens/ProfileScreen/grid_screen.dart';
import 'package:instgram_clone_flutter/Screens/ProfileScreen/tag_screen.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "Private Icon.png"),
              SizedBox(width: 5),
              Text("Sujal_dave"),
            ],
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: UiHelper.CustomImage(imgurl: "Menu.png"),
            ),
          ],
        ),

        body: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  UiHelper.CustomImage(imgurl: "ProfileImg.png"),

                  SizedBox(width: 80),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text("54", style: TextStyle(fontSize: 21)),
                          Text("Posts", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text("834", style: TextStyle(fontSize: 21)),
                          Text("Followers", style: TextStyle(fontSize: 15)),
                        ],
                      ),

                      SizedBox(width: 30),
                      Column(
                        children: [
                          Text("162", style: TextStyle(fontSize: 21)),
                          Text("Following", style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "Sujal Dave ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [Text("Digital goodies designer @pixsellz ")],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(children: [Text("Everything is designed ")]),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Plus.png"),
                      ),
                      SizedBox(height: 6),
                      Text("New"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Stry1.png"),
                      ),
                      SizedBox(height: 6),
                      Text("Friends"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Stry2.png"),
                      ),
                      SizedBox(height: 6),
                      Text("Sports"),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(color: Colors.grey.shade700),
                        ),
                        child: UiHelper.CustomImage(imgurl: "Stry3.png"),
                      ),
                      SizedBox(height: 6),
                      Text("Design"),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: AppBar(
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(icon: UiHelper.CustomImage(imgurl: "Grid Icon.png")),
                    Tab(icon: UiHelper.CustomImage(imgurl: "Tags Icon.png")),
                  ],
                ),
              ),
            ),
            Expanded(child: TabBarView(children: [GridScreen(), TagScreen()])),
          ],
        ),
      ),
    );
  }
}
