import 'package:flutter/material.dart';
import 'package:netflix/core/constants/color_constants.dart';
import 'package:netflix/global_widets/global_widgets.dart';
import 'package:netflix/view/profile/widgets/custom_profile_data.dart';

class Profilepage extends StatefulWidget {
  Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  int currentTabIndex = 0;

  final List listofimages = [
    "https://images.pexels.com/photos/1239288/pexels-photo-1239288.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/413959/pexels-photo-413959.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=600"
        "https://images.pexels.com/photos/4067753/pexels-photo-4067753.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3916455/pexels-photo-3916455.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1855582/pexels-photo-1855582.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1559193/pexels-photo-1559193.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=600"
        "https://images.pexels.com/photos/4067753/pexels-photo-4067753.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3916455/pexels-photo-3916455.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1855582/pexels-photo-1855582.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
          centerTitle: true,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.lock),
              Text("t__k"),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 48,
                      backgroundColor:
                          ColorConstants.primaryBlack.withOpacity(.1),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 43,
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Custom_profile_data(title: "6", value: "Posts"),
                          Custom_profile_data(title: "3563", value: "Follwers"),
                          Custom_profile_data(title: "863", value: "Following")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "human",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Chasing sunsets and dreams \n | Digital storyteller | \n Making memories around the world 🌎",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomButton(
                    buttonColor: ColorConstants.primaryBlack,
                    havVBorder: true,
                    text: "Edit Profile"),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor:
                                ColorConstants.primaryBlack.withOpacity(.1),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 28,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Add",
                            style:
                                TextStyle(color: ColorConstants.primaryBlack),
                          ),
                        ],
                      ),
                      Row(
                        children: List.generate(
                          5,
                          (index) => Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: ColorConstants.primaryBlack
                                      .withOpacity(.1),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 28,
                                      backgroundImage: NetworkImage(
                                          "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&w=400"),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Higlights",
                                  style: TextStyle(
                                      color: ColorConstants.primaryBlack),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  height: 0,
                ),
                TabBar(
                    onTap: (value) {
                      setState(() {
                        currentTabIndex = value;
                      });
                    },
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorWeight: 1,
                    dividerHeight: 0,
                    labelColor: ColorConstants.primaryBlack,
                    unselectedLabelColor:
                        ColorConstants.primaryBlack.withOpacity(.5),
                    tabs: [
                      Tab(
                        icon: Icon(Icons.grid_on_rounded),
                      ),
                      Tab(
                        icon: Icon(Icons.person_pin_outlined),
                      )
                    ]),
                currentTabIndex == 0
                    ? GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) => Container(
                          child: Image.network(
                            listofimages[index],
                            fit: BoxFit.cover,
                          ),
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                        ),
                        itemCount: 10,
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                        itemBuilder: (context, index) => Container(
                          child: Image.network(
                            listofimages[index],
                            fit: BoxFit.cover,
                          ),
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                        ),
                        itemCount: 3,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
