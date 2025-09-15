import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  // var arrContent = [
  //   {
  //     "img":
  //         "https://images.unsplash.com/photo-1526779259212-939e64788e3c?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZnJlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D",
  //   },
  //   {
  //     "img":
  //         "https://images.unsplash.com/photo-1575936123452-b67c3203c357?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
  //   },
  //   {
  //     "img":
  //         "https://images.pexels.com/photos/3094799/pexels-photo-3094799.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
  //   },
  // ];

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
      body: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 44,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff262626),
                  ),

                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Color(0xff8E8E93),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                UiHelper.CustomImage(imgurl: 'Live.png'),
              ],
            ),
          ),

          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.CustomImage(imgurl: "igtv.png"),
                          SizedBox(width: 5),
                          Text("IGTV"),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UiHelper.CustomImage(imgurl: "shop.png"),
                          SizedBox(width: 5),
                          Text("Shop"),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Style")],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Sports")],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Auto")],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Clothing")],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Branding")],
                      ),
                    ),
                  ),

                  SizedBox(width: 5),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 5,
                        bottom: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("Film")],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 124,
                  width: 124,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(),
                  child: Image.network(
                    Uri.encodeFull(arrContent[index]["img"].toString()),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Icon(Icons.broken_image, color: Colors.grey);
                    },
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
