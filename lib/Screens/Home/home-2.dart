import 'package:flutter/material.dart';
import 'package:skygoal_intern_task/Screens/Home/home-3.dart';

//Screen that will allow us to sort colleges, schools, exams based on various courses
class Home2 extends StatefulWidget {
  static List<Map> data = [  //list of courses and their respective icons
    {
      "id": 1,
      "image": "assets/images/education.png",
      "name": "Bachelor of Technology"
    },
    {
      "id": 2,
      "image": "assets/images/sketch.png",
      "name": "Bachelor of Architecture"
    },
    {
      "id": 3,
      "image": "assets/images/pharmacy.png",
      "name": "Bachelor of Pharmacy"
    },
    {"id": 4, "image": "assets/images/balance.png", "name": "Law"},
    {
      "id": 5,
      "image": "assets/images/management.png",
      "name": "Bachelor of Management"
    },
  ];

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  Map<int, bool> selectedFlag = {};

  bool isSelectionMode = false;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height / _figmaheight;
    _width = _width / _figmawidth;
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: _height * 28, horizontal: _width * 38),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Sort by",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ))
            ],
          ),
          Divider(),
          SizedBox(
            height: _height * 25,
          ),
          Expanded(
            child: ListView.builder( //List View Builder to build courses chooser
              itemBuilder: (builder, index) {
                Map m = Home2.data[index];
                selectedFlag[index] = selectedFlag[index] ?? false;
                bool? isSelected = selectedFlag[index];
                return ListTile(
                  title: Text("${m['name']}"),
                  onTap: () => onTap(isSelected!, index),
                  leading: ImageIcon(
                    AssetImage("${m['image']}"),
                  ),
                );
              },
              itemCount: Home2.data.length,
            ),
          )
        ],
      ),
    );
  }

  void onTap(bool isSelected, int index) { //on Tap function that is called when user taps on a particular list item
    if (isSelectionMode) {
      setState(() {
        selectedFlag[index] = !isSelected;
        isSelectionMode = selectedFlag.containsValue(true);
      });
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Home3(index)));
    }
  }
}
