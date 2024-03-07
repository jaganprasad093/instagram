import 'package:flutter/material.dart';
import 'package:netflix/core/constants/color_constants.dart';
import 'package:netflix/view/add_image_screen/bottom_tabs/library.dart';
import 'package:netflix/view/add_image_screen/bottom_tabs/photos.dart';
import 'package:netflix/view/add_image_screen/bottom_tabs/videos.dart';

class AddImageScreen extends StatefulWidget {
  const AddImageScreen({super.key});

  @override
  State<AddImageScreen> createState() => _AddImageScreenState();
}

class _AddImageScreenState extends State<AddImageScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 80,
          leading: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Cancel",
              style:
                  TextStyle(color: ColorConstants.primaryBlack, fontSize: 17),
            ),
          ),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Reents",
                style: TextStyle(
                  color: ColorConstants.primaryBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
          actions: [
            Text(
              "Next",
              style: TextStyle(
                  color: ColorConstants.primaryBlue,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
                height: 375,
                decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(10),
                    color: ColorConstants.primaryBlack,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.pexels.com/photos/1540977/pexels-photo-1540977.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        fit: BoxFit.cover)),
                alignment: Alignment.bottomRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorConstants.primaryBlack.withOpacity(.5)),
                        child: Icon(
                          Icons.all_inclusive_rounded,
                          color: ColorConstants.primarWhite,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorConstants.primaryBlack.withOpacity(.5)),
                        child: Icon(
                          Icons.space_dashboard_outlined,
                          color: ColorConstants.primarWhite,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorConstants.primaryBlack.withOpacity(.5)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.file_copy_outlined,
                              color: ColorConstants.primarWhite,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "SELECT MULTIPLE",
                              style:
                                  TextStyle(color: ColorConstants.primarWhite),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
                child: TabBarView(children: [Libarary(), Photos(), Videos()]))
          ],
        ),
        bottomNavigationBar: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1,
            dividerHeight: 0,
            labelColor: ColorConstants.primaryBlack,
            unselectedLabelColor: ColorConstants.primaryBlack.withOpacity(.5),
            tabs: [
              Tab(
                child: Text("Libarary"),
              ),
              Tab(
                child: Text("Photos"),
              ),
              Tab(
                child: Text("Video"),
              )
            ]),
      ),
    );
  }
}
