import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> with SingleTickerProviderStateMixin{
  late final TabController controller;

  @override
  void initState() {
    controller = TabController(length: 4,vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery
        .of(context)
        .size
        .height;
    double _width = MediaQuery
        .of(context)
        .size
        .width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height / _figmaheight;
    _width = _width / _figmawidth;
    return Container(
      height: _height*71,
      color: Color(0xff0e3c6e),
      child: TabBar(
        controller: controller,
          onTap: (index) {},
          tabs: const [
            Tab(
                icon: Icon(Icons.home),
                text: "Search",
            ),
            Tab(
                icon: Icon(Icons.image_search),
                text: "saved",
            ),
            Tab(
              icon: Icon(Icons.music_note_outlined),
              text: "saved",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Account",
            ),
          ]
      ),
    );
  }
}
