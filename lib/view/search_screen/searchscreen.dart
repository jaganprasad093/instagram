import 'package:flutter/material.dart';
import 'package:netflix/core/constants/color_constants.dart';
import 'package:netflix/view/home_page/widgets/user_post.dart';
import 'package:netflix/view/search_screen/categories_widgets/categories.dart';
import 'package:netflix/view/search_screen/categories_widgets/customgrid.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
                child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: "search",
                  fillColor: Colors.black.withOpacity(.1),
                  filled: true,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none)),
            )),
            IconButton(onPressed: () {}, icon: Icon(Icons.select_all_sharp))
          ],
        ),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                child: Row(
              children: List.generate(10, (index) => Categories()),
            )),
          ),
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
            children: List.generate(
                3,
                (index) => CustomGrid(
                      iseven: index.isEven,
                    )),
          )))
        ],
      ),
    );
  }
}
