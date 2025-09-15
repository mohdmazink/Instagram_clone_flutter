import 'package:flutter/material.dart';
import 'package:instgram_clone_flutter/widgets/uihelper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var arrContent = [
    {"img": "https://picsum.photos/200/300", "name": "Your story"},
    {"img": "https://picsum.photos/300/300", "name": "karennne"},
    {"img": "https://picsum.photos/200/300", "name": "zackjohn"},
    {"img": "https://picsum.photos/300/300", "name": "kieron_d"},
    {"img": "https://picsum.photos/200/300", "name": "craig_love"},
    {"img": "https://picsum.photos/300/300", "name": "karennne"},
    {"img": "https://picsum.photos/200/300", "name": "craig_love"},
    {"img": "https://picsum.photos/300/300", "name": "karennne"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black12,
        leading: UiHelper.CustomImage(imgurl: 'Camerahome.png'),
        title: UiHelper.CustomImage(imgurl: 'Instagramome.png'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: 'IGTVhome.png'),
          ),
          IconButton(
            onPressed: () {},
            icon: UiHelper.CustomImage(imgurl: 'Messanger.png'),
          ),
        ],
      ),
      body: Column(
        children: [
          // Stories Avatars
          SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ListView.builder(
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        arrContent[index]["img"].toString(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // Stories Names
          SizedBox(
            height: 40,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      arrContent[index]["name"].toString(),
                      style: const TextStyle(fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ),

          // Feed
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post Header
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: ListTile(
                        leading: UiHelper.CustomImage(imgurl: 'person1.png'),
                        title: const Text("joshua_l"),
                        subtitle: const Text("Tokyo, Japan"),
                        trailing: UiHelper.CustomImage(imgurl: 'More Icon.png'),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 0,
                        ),
                        visualDensity: const VisualDensity(vertical: -2),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Post Image
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/Posthome.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Post Actions
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Like.png"),
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Comment.png"),
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Share.png"),
                        const Spacer(),
                        UiHelper.CustomImage(imgurl: "Save.png"),
                        const SizedBox(width: 20),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Likes
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Oval.png"),
                        const SizedBox(width: 5),
                        const Text("Liked by sujal_dave and 44,686 others"),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Caption
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "sujal_dave The game in Japan was amazing and I want to share some photos",
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post Header
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: ListTile(
                        leading: UiHelper.CustomImage(imgurl: 'person1.png'),
                        title: const Text("joshua_l"),
                        subtitle: const Text("Tokyo, Japan"),
                        trailing: UiHelper.CustomImage(imgurl: 'More Icon.png'),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 0,
                        ),
                        visualDensity: const VisualDensity(vertical: -2),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Post Image
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/Posthome.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Post Actions
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Like.png"),
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Comment.png"),
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Share.png"),
                        const Spacer(),
                        UiHelper.CustomImage(imgurl: "Save.png"),
                        const SizedBox(width: 20),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Likes
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Oval.png"),
                        const SizedBox(width: 5),
                        const Text("Liked by sujal_dave and 44,686 others"),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Caption
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "sujal_dave The game in Japan was amazing and I want to share some photos",
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post Header
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: ListTile(
                        leading: UiHelper.CustomImage(imgurl: 'person1.png'),
                        title: const Text("joshua_l"),
                        subtitle: const Text("Tokyo, Japan"),
                        trailing: UiHelper.CustomImage(imgurl: 'More Icon.png'),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 0,
                        ),
                        visualDensity: const VisualDensity(vertical: -2),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Post Image
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/Posthome.png',
                        fit: BoxFit.cover,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Post Actions
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Like.png"),
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Comment.png"),
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Share.png"),
                        const Spacer(),
                        UiHelper.CustomImage(imgurl: "Save.png"),
                        const SizedBox(width: 20),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Likes
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        UiHelper.CustomImage(imgurl: "Oval.png"),
                        const SizedBox(width: 5),
                        const Text("Liked by sujal_dave and 44,686 others"),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // Caption
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        "sujal_dave The game in Japan was amazing and I want to share some photos",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
