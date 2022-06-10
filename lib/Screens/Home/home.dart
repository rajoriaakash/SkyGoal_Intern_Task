import 'package:flutter/material.dart';
import 'package:skygoal_intern_task/Screens/Home/home-2.dart';
import 'package:skygoal_intern_task/Widgets/navbar.dart';
import 'package:skygoal_intern_task/Widgets/voicesearch.dart';

import '../../Widgets/textsearch.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height/_figmaheight;
    _width = _width/_figmawidth;
    int numberOfCollege = 126;
    int numberOfSchools = 106;
    int numberOfExams = 16;
    void _showSortingPanel(){
      showModalBottomSheet(context: context, builder: (context){
        return Home2();
      });
    }
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: _height*225,
                    decoration: BoxDecoration(
                        color: Color(0xff0E3C6E),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
                    ),
                    padding: new EdgeInsets.fromLTRB(_width*37, _height*16, _width*37, _height*27),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Align(
                          alignment : Alignment.topRight,
                          child: SizedBox(
                            height: _height*25,
                            child: IconButton(
                                onPressed: (){},
                                iconSize: _height*25.0,
                                color: Colors.white,
                                icon: Icon(Icons.notifications),
                            ),
                          ),
                        ),
                        Text(
                            "Find your own way",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: _height*20),
                        Text(
                            "Search in 600 colleges around!",
                          style: TextStyle(
                              color: Colors.white
                          ),
                        ),
                        SizedBox(height: _height*30),
                        Row(
                          children: [
                            TextSearch(),
                            SizedBox(width: _width*10),
                            VoiceSearch()
                          ],
                        )
                      ],
                    ),
                  ),
                SizedBox(height: _height*50),
                GestureDetector(
                  onTap: (){
                    _showSortingPanel();
                  },
                  child: Container(
                    height: _height*158,
                    width: _width*354,
                    padding: EdgeInsets.fromLTRB(_width*18, _height*19, _width*120, _height*30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                            "Top Colleges",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: _height*4.5,),
                        Text(
                            "Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                          style: TextStyle(
                            fontSize: 11.5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/rectangle141.png'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
                SizedBox(height: _height*20),
                GestureDetector(
                  onTap: (){
                    _showSortingPanel();
                  },
                  child: Container(
                    height: _height*158,
                    width: _width*354,
                    padding: EdgeInsets.fromLTRB(_width*18, _height*19, _width*120, _height*30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Top Schools",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: _height*4.5,),
                        Text(
                          "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you..",
                          style: TextStyle(
                            fontSize: 11.5,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/rectangle142.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),

                SizedBox(height: _height*20),
                GestureDetector(
                  onTap: (){
                    _showSortingPanel();
                  },
                  child: Container(
                    height: _height*158,
                    width: _width*354,
                    padding: EdgeInsets.fromLTRB(_width*18, _height*19, _width*120, _height*30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Exams",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: _height*4.5,),
                        Text(
                          "Find an end to end information about the exams that are happening in India",
                          style: TextStyle(
                            fontSize: 11.5,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/rectangle143.png'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
            bottomNavigationBar : NavBar(),
        )
    );
  }
}
