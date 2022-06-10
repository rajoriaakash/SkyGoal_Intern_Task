import 'package:flutter/material.dart';

import '../../Widgets/textsearch.dart';
import '../../Widgets/voicesearch.dart';
import 'Home-4/home-4.dart';

class Home3 extends StatefulWidget {
  const Home3(int index, {Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {

  static List<Map> data = [
  {
    "id" : 1,
    "image" : "assets/images/education.png",
    "name" : "Bachelor of Technology"
  },
  {
    "id" : 2,
    "image" : "assets/images/sketch.png",
    "name" : "Bachelor of Architecture"
  },
  {
    "id" : 3,
    "image" : "assets/images/pharmacy.png",
    "name" : "Bachelor of Pharmacy"
  },
  {
    "id" : 4,
    "image" : "assets/images/balance.png",
    "name" : "Law"
  },
  {
    "id" : 5,
    "image" : "assets/images/management.png",
    "name" : "Bachelor of Management"
  },

];
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height/_figmaheight;
    _width = _width/_figmawidth;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: _height*190,
              decoration: BoxDecoration(
                  color: Color(0xff0E3C6E),
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))
              ),
              padding: new EdgeInsets.fromLTRB(_width*37, _height*60, _width*37, _height*40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: _height*26,horizontal: _width*18),
              child: Row(
                children: [
                  Container(
                    height: _height*27,
                    width: _width*133,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                      child: Text(
                          "GHJK Engineering College",
                        style: TextStyle(
                          fontSize: 8
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            // Container(
            //   height: _height*243,
                    // child: Card(
                    //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    //   child: InkWell(
                    //     onTap: () => print("ciao"),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.stretch,  // add this
                    //       children: <Widget>[
                    //         ClipRRect(
                    //           borderRadius: BorderRadius.only(
                    //             topLeft: Radius.circular(8.0),
                    //             topRight: Radius.circular(8.0),
                    //           ),
                    //           child: Image.network(
                    //               'https://placeimg.com/640/480/any',
                    //               // width: 300,
                    //                 height: 150,
                    //               fit:BoxFit.fill
                    //
                    //           ),
                    //         ),
                    //         ListTile(
                    //           title: Text('Pub 1'),
                    //           subtitle: Text('Location 1'),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  // )
            Container(
              height: _height*243,
              width: _width*354,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                child: GestureDetector(
                  onTap:() {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Home4()));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        children: [
                          ClipRect(
                            child: Image.asset(
                              "assets/images/ghjk_engineering.png",
                              height: _height*116,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  iconSize: 15,
                                    onPressed: (){},
                                    icon: Icon(
                                        Icons.share_outlined,
                                      color: Colors.black,
                                    )
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Colors.white,
                                child: IconButton(
                                  iconSize: 15,
                                    onPressed: (){},
                                    icon: Icon(
                                        Icons.bookmark_border_rounded,
                                      color: Colors.black,
                                    )
                                ),
                              ),
                            ),
                          ),
                        ]
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical:_height*9, horizontal: _height*18),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    "GHJK Engineering college",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal:_width*7 ),
                                  height: _height*22,
                                  width: _width*52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.green,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '4.3',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white
                                        ),
                                      ), // <-- Text
                                      Icon( // <-- Icon
                                        Icons.star,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: _height*11,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    child: Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.",
                                      style: TextStyle(
                                        fontSize: 8 ,
                                        color: Colors.grey,

                                      ),
                                    ),
                                  height: _height*32,
                                  width: _width*207,
                                ),
                                Container(
                                  width: _width*79,
                                  height: _height*22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Color(0xff0E3C6E),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Apply Now",
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Divider(height: _height*15,),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      // ImageIcon(
                                      //     AssetImage("assets/images/like1.png"),
                                      //   size: 5,
                                      // ),
                                      SizedBox(width: _width*4,),
                                      Text(
                                        "More than 1000+ students have been placed",
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey
                                        ),
                                      ),
                                    ],
                                  ),

                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_outlined,
                                          size: 10,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: _width*5.6,),
                                        Text(
                                          "468+",
                                          style: TextStyle(
                                              fontSize: 10,
                                            color: Colors.grey
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
