import 'package:flutter/material.dart';
import 'package:netflix/core/constants/image_constants.dart';
import 'package:netflix/view/dummydb.dart';
import 'package:netflix/view/home_page/widgets/coustom_story_avathar.dart';
import 'package:netflix/view/home_page/widgets/user_post.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    super.key,
  });

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Icon(Icons.camera_alt_outlined),
        title: Image.asset(
          ImageConstants.instaLogoPng,
          scale: 1.5,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.heart_broken_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: List.generate(
                  DummyDb.storylist.length,
                  (index) => StoryAvathar(
                        propic: DummyDb.storylist[index]["propic"],
                        islive: DummyDb.storylist[index]["islive"],
                        username: DummyDb.storylist[index]["username"],
                      )),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: DummyDb.homepostlist.length,
              itemBuilder: (context, index) => UserPosts(
                  postimages: DummyDb.homepostlist[index]["posts"],
                  isliked: DummyDb.homepostlist[index]["isliked"],
                  profilepic: DummyDb.homepostlist[index]["propic"],
                  username: DummyDb.homepostlist[index]["username"],
                  location: DummyDb.homepostlist[index]["location"]),
            )
          ],
        ),
      ),
    );
  }
}
