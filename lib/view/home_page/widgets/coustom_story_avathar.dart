import 'package:flutter/material.dart';

class StoryAvathar extends StatelessWidget {
  const StoryAvathar(
      {super.key,
      required this.islive,
      required this.propic,
      required this.username});
  final bool islive;
  final String username;
  final String propic;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(alignment: Alignment.center, children: [
            Container(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.red,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(""),
                    radius: 24,
                  ),
                ),
              ),
            ),
            islive == true
                ? Positioned(
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 244, 239, 239))),
                      child: Text(
                        "live",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                : SizedBox()
          ]),
          Text("t_k")
        ],
      ),
    );
  }
}
