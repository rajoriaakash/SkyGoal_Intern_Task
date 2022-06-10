import 'package:flutter/material.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height/_figmaheight;
    _width = _width/_figmawidth;
    return Container(
      padding: EdgeInsets.all(_height*31),
      child: Column(
            mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17
                      ),
                    ),
                    SizedBox(height: _height*16,),
                    Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13
                          ),
                        ),
                    SizedBox(height: _height*27,),
                    Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: _height*16,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                        child: Image.asset("assets/images/map.png")
                    ),
                    SizedBox(height: _height*33,),
                    Text(
                        "Student Review",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17
                      ),
                    ),
                    // ListView(
                    //   scrollDirection: Axis.vertical,
                    //   children: [
                    //
                    //   ],
                    // )
                  ],
      ),
    );
  }
}
