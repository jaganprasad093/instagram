import 'package:flutter/material.dart';

class CustomGrid extends StatelessWidget {
  CustomGrid({super.key, required this.iseven});

  final bool iseven;
  final List listofimages = [
    "https://images.pexels.com/photos/4067753/pexels-photo-4067753.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3916455/pexels-photo-3916455.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1855582/pexels-photo-1855582.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1559193/pexels-photo-1559193.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        iseven
            ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          child: Image.network(
                            "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=600",
                            fit: BoxFit.cover,
                          ),
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                        ),
                        Container(
                          child: Image.network(
                            "https://images.pexels.com/photos/36675/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600",
                            fit: BoxFit.cover,
                          ),
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Image.network(
                        "https://images.pexels.com/photos/5486199/pexels-photo-5486199.jpeg?auto=compress&cs=tinysrgb&w=600",
                        fit: BoxFit.cover,
                      ),
                      height: MediaQuery.sizeOf(context).width * .66,
                    ),
                  )
                ],
              )
            : Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Image.network(
                        "https://images.pexels.com/photos/5486199/pexels-photo-5486199.jpeg?auto=compress&cs=tinysrgb&w=600",
                        fit: BoxFit.cover,
                      ),
                      height: MediaQuery.sizeOf(context).width * .66,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Container(
                          child: Image.network(
                            "https://images.pexels.com/photos/1987301/pexels-photo-1987301.jpeg?auto=compress&cs=tinysrgb&w=600",
                            fit: BoxFit.cover,
                          ),
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                        ),
                        Container(
                          child: Image.network(
                            "https://images.pexels.com/photos/36675/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=600",
                            fit: BoxFit.cover,
                          ),
                          height: MediaQuery.sizeOf(context).width * .33,
                          width: MediaQuery.sizeOf(context).width * .33,
                        )
                      ],
                    ),
                  ),
                ],
              ),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => Container(
            child: Image.network(
              listofimages[index],
              fit: BoxFit.cover,
            ),
            height: MediaQuery.sizeOf(context).width * .33,
            width: MediaQuery.sizeOf(context).width * .33,
          ),
          itemCount: 6,
        ),
      ],
    );
  }
}
