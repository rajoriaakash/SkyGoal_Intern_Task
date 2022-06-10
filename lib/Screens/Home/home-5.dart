import 'package:flutter/material.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {
  List<Map> students = [
    {
      "id" : 1,
      "name" : "Arun sai",
      "imagePath" : "assets/images/student1.png",
      "review" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
    },
    {
      "id" : 2,
      "name" : "Arun sai",
      "imagePath" : "assets/images/student2.png",
      "review" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
    },
    {
      "id" : 3,
      "name" : "Arun sai",
      "imagePath" : "assets/images/student3.png",
      "review" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
    },
    {
      "id" : 4,
      "name" : "Arun sai",
      "imagePath" : "assets/images/student4.png",
      "review" : "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
    }
  ];

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
                    const Text(
                        "Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 17
                      ),
                    ),
                    SizedBox(height: _height*16,),
                    const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13
                          ),
                        ),
                    SizedBox(height: _height*27,),
                    const Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: _height*16,),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                        child: Image.asset("assets/images/map.png")
                    ),
                    SizedBox(height: _height*33,),
                    const Text(
                        "Student Review",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 17
                      ),
                    ),
                    SizedBox(height: _height*16,),
                    SizedBox(
                      height: _height*60,
                      child: ListView.builder(
                        itemCount: students.length,
                        scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: EdgeInsets.symmetric(vertical: 0,horizontal: _width*8),
                              child: GestureDetector(
                                onTap: (){},
                                child: SizedBox(
                                  height: _height*50,
                                  child: Image.asset("${students[index]['imagePath']}"),
                                ),
                              ),
                            );
                          }
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: _height*15),
                      height: _height*120,
                      width: _width*368,
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Arun sai",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: _height*5,),
                              const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
      ),
    );
  }
}
