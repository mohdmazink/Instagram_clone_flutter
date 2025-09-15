import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  TextEditingController searchController = TextEditingController();

  var arrContent = [
    {
      "img": "Oval1.png",
      "name": "joshua_l",
      "lastmsg": "Have a nice day, bro!",
    },
    {
      "img": "Oval2.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie",
    },
    {
      "img": "Oval3.png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "Oval4.png", "name": "andrewww_", "lastmsg": "Sounds good 😂😂😂"},
    {
      "img": "Oval5.png",
      "name": "kiero_d",
      "lastmsg": "The new design looks cool, b…",
    },
    {"img": "Oval6.png", "name": "maxjacobson", "lastmsg": "Thank you, bro!"},
    {
      "img": "Oval7.png",
      "name": "jamie.franco",
      "lastmsg": "Yeap, I'm going to travel in To…",
    },
    {
      "img": "Oval2.png",
      "name": "karennne",
      "lastmsg": "I heard this is a good movie",
    },
    {
      "img": "Oval3.png",
      "name": "martini_rond",
      "lastmsg": "See you on the next meeting!",
    },
    {"img": "Oval4.png", "name": "andrewww_", "lastmsg": "Sounds good 😂😂😂"},
    {
      "img": "Oval5.png",
      "name": "kiero_d",
      "lastmsg": "The new design looks cool, b…",
    },
    {"img": "Oval6.png", "name": "maxjacobson", "lastmsg": "Thank you, bro!"},
    {
      "img": "Oval7.png",
      "name": "jamie.franco",
      "lastmsg": "Yeap, I'm going to travel in To…",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
        title: const Text("Sujal_dave"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.white),
          ),
        ],
        backgroundColor: Colors.black, // ✅ solid black
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: 42,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xff262626),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                textAlign: TextAlign.left,
                controller: searchController,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color(0xff8E8E93),
                  ),
                  border: InputBorder.none,
                  prefixIcon: UiHelper.CustomImage(imgurl: "SearchIcon.png"),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: arrContent.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/${arrContent[index]["img"].toString()}',
                      ),
                    ),
                    title: Text(
                      arrContent[index]["name"].toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      arrContent[index]["lastmsg"].toString(),
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: UiHelper.CustomImage(imgurl: "Camera.png"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,

      // ✅ Button fixed at bottom (full width)
      bottomNavigationBar: SizedBox(
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff121212),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // no rounded corners
            ),
          ),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "CameraFloat.png"),
              const SizedBox(width: 5),
              const Text("Camera", style: TextStyle(color: Color(0xff3897F0))),
            ],
          ),
        ),
      ),
    );
  }
}
