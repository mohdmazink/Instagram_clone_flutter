import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class YouScreen extends StatefulWidget {
  const YouScreen({super.key});

  @override
  State<YouScreen> createState() => _YouScreenState();
}

class _YouScreenState extends State<YouScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 48,
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.only(top: 13, left: 10),
              child: Text(
                "Follow Requests",
                style: TextStyle(fontSize: 18, color: Color(0xfff9f9f9)),
              ),
            ),
          ),

          Column(
            children: [
              Row(children: [Text("New",style: TextStyle(),)]),
              Row(
                children: [
                  UiHelper.CustomImage(imgurl: "Youimg.png"),
                  Text("karennne liked your photo. 1h"),
                  UiHelper.CustomImage(imgurl: "You_img.png"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
