import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _Game_PageState();
}

class _Game_PageState extends State<HomePage> {
  List img = [
    "assets/images/game1.jpeg",
    "assets/images/game2.jpeg",
    "assets/images/game4.webp",
    "assets/images/game5.jpeg",
    "assets/images/game6.webp",
    "assets/images/game7.jpeg",
    "assets/images/game8.webp",
    "assets/images/game9.png",
    "assets/images/game10.jpeg",
    "assets/images/game11.webp"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: img.length,
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'page1',arguments: img[index]);
                },
                child: Image.asset("${img[index]}"),),
            );
          },
        ),
      ),
    );
  }
}