import 'package:flutter/material.dart';
import 'package:netflix/core/constants/color_constants.dart';

class UserPosts extends StatefulWidget {
  const UserPosts(
      {super.key,
      required this.profilepic,
      required this.username,
      required this.location,
      this.isliked = true,
      required this.postimages});
  final String profilepic;
  final String username;
  final String location;
  final bool isliked;
  final List<String> postimages;

  @override
  State<UserPosts> createState() => _UserPostsState();
}

int index = 1;

class _UserPostsState extends State<UserPosts> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: ColorConstants.primarWhite,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(widget.profilepic),
            ),
            title: Row(children: [
              Text(
                widget.username,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.verified,
                color: Colors.blue,
                size: 18,
              )
            ]),
            subtitle: Text(
              widget.location,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 10),
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Stack(
            children: [
              SizedBox(
                height: 400,
                child: PageView.builder(
                  onPageChanged: (value) {
                    index = value + 1;
                    setState(() {});
                  },
                  itemCount: widget.postimages.length,
                  itemBuilder: (context, index) => Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                widget.postimages[index],
                              ),
                              fit: BoxFit.cover))),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 20,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      child: Text(
                        "$index/${widget.postimages.length}",
                        style: TextStyle(color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 9, 9, 9).withOpacity(.6))))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(Icons.chat_bubble_outline),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(Icons.send_sharp),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        widget.postimages.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: CircleAvatar(
                                backgroundColor: (index == index - 1)
                                    ? ColorConstants.primaryBlue
                                    : null,
                                radius: (index == index - 1) ? 5 : 3,
                              ),
                            ))),
              ),
              // children: [CircleAvatar()],

              Icon(Icons.bookmark_border_outlined)
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 9,
                  backgroundImage: NetworkImage(""),
                ),
                SizedBox(
                  width: 7,
                ),
                RichText(
                    text: TextSpan(
                        text: "Liked by ",
                        style: TextStyle(color: ColorConstants.primaryBlack),
                        children: [
                      TextSpan(
                          text: widget.username,
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontWeight: FontWeight.bold)),
                      TextSpan(text: " and "),
                      TextSpan(
                          text: "44,9990 others",
                          style: TextStyle(
                              color: ColorConstants.primaryBlack,
                              fontWeight: FontWeight.bold))
                    ]))
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: widget.username,
                  style: TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                        text: "Hi its a new begining..",
                        style: TextStyle(fontWeight: FontWeight.normal))
                  ],
                ),
              ))
        ]));
  }
}
