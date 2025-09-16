import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({super.key});

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  var arrContent = [
    {"img": "https://picsum.photos/200/300"},
    {"img": "https://picsum.photos/300/300"},
    {"img": "https://picsum.photos/400/300"},
    {"img": "https://picsum.photos/200/300"},
    {"img": "https://picsum.photos/300/300"},
    {"img": "https://picsum.photos/400/300"},
    {"img": "https://picsum.photos/300/300"},
    {"img": "https://picsum.photos/400/300"},
    {"img": "https://picsum.photos/200/300"},
    {"img": "https://picsum.photos/200/300"},
    {"img": "https://picsum.photos/300/300"},
    {"img": "https://picsum.photos/400/300"},
    {"img": "https://picsum.photos/200/300"},
    {"img": "https://picsum.photos/300/300"},
    {"img": "https://picsum.photos/400/300"},
    {"img": "https://picsum.photos/300/300"},
    {"img": "https://picsum.photos/400/300"},
    {"img": "https://picsum.photos/200/300"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: arrContent.length,
        itemBuilder: (context, index) {
          return Container(
            clipBehavior: Clip.antiAlias,
            height: 124,
            width: 124,
            decoration: BoxDecoration(),
            child: Image.network(
              arrContent[index]["img"].toString(),
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
