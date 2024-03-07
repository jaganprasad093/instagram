import 'package:flutter/material.dart';
import 'package:netflix/view/add_image_screen/add_image_screen.dart';
import 'package:netflix/view/home_page/homepage.dart';
import 'package:netflix/view/profile/profile.dart';
import 'package:netflix/view/search_screen/searchscreen.dart';
import 'package:netflix/view/select_account/select_account.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screesList = [
    Homepage(),
    Searchscreen(),
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
    Profilepage()
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screesList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          if (value != 2) {
            selectedIndex = value;
            setState(() {});
          } else {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddImageScreen(),
                ));
          }
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          const BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),

          // center bottm nav  button
          BottomNavigationBarItem(
              icon: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all()),
                  child: const Icon(Icons.add)),
              label: ""),
          const BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined), label: ""),
          const BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 15,
              ),
              label: ""),
        ],
      ),
    );
  }
}
