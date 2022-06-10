import 'package:flutter/material.dart';
import 'package:skygoal_intern_task/Screens/Home/home-2.dart';
import 'package:skygoal_intern_task/Widgets/navbar.dart';
import 'package:skygoal_intern_task/Widgets/voicesearch.dart';

import '../../Widgets/textsearch.dart';

//Home Screen
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height / _figmaheight;  //calculate height ratio according to figma designs
    _width = _width / _figmawidth;     //calculate width ratio according to figma designs
    int numberOfCollege = 126;
    int numberOfSchools = 106;
    int numberOfExams = 16;
    void _showSortingPanel() {  //This function is called to show Sorting List Screen as a bottom sheet
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Home2();
          });
    }

    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(   //Top widget at home screen
              height: _height * 225,
              decoration: const BoxDecoration(
                  color: Color(0xff0E3C6E),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              padding: EdgeInsets.fromLTRB(
                  _width * 37, _height * 16, _width * 37, _height * 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      height: _height * 25,
                      child: IconButton(
                        onPressed: () {},
                        iconSize: _height * 25.0,
                        color: Colors.white,
                        icon: const Icon(Icons.notifications),
                      ),
                    ),
                  ),
                  const Text(
                    "Find your own way",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: _height * 20),
                  const Text(
                    "Search in 600 colleges around!",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(height: _height * 30),
                  Row(
                    children: [
                      const TextSearch(),
                      SizedBox(width: _width * 10),
                      const VoiceSearch()
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: _height * 50),
            GestureDetector(  //Widget for Top Colleges
              onTap: () {
                _showSortingPanel();
              },
              child: Container(
                height: _height * 158,
                width: _width * 354,
                padding: EdgeInsets.fromLTRB(
                    _width * 18, _height * 19, _width * 120, _height * 30),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/rectangle141.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Top Colleges",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: _height * 4.5,
                    ),
                    const Text(
                      "Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                      style: TextStyle(
                        fontSize: 11.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: _height * 20),
            GestureDetector( //Widget for Top Schools
              onTap: () {
                _showSortingPanel();
              },
              child: Container(
                height: _height * 158,
                width: _width * 354,
                padding: EdgeInsets.fromLTRB(
                    _width * 18, _height * 19, _width * 120, _height * 30),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/rectangle142.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Top Schools",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: _height * 4.5,
                    ),
                    const Text(
                      "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you..",
                      style: TextStyle(
                        fontSize: 11.5,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: _height * 20),
            GestureDetector( //Widget for Exams
              onTap: () {
                _showSortingPanel();
              },
              child: Container(
                height: _height * 158,
                width: _width * 354,
                padding: EdgeInsets.fromLTRB(
                    _width * 18, _height * 19, _width * 120, _height * 30),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/rectangle143.png'),
                        fit: BoxFit.fill)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Exams",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(
                      height: _height * 4.5,
                    ),
                    const Text(
                      "Find an end to end information about the exams that are happening in India",
                      style: TextStyle(
                        fontSize: 11.5,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const NavBar(), //navbar to browse sections in app
    ));
  }
}
