import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//This widget provides UI for Hostel Facility
class HostelFacility extends StatefulWidget {
  const HostelFacility({Key? key}) : super(key: key);

  @override
  State<HostelFacility> createState() => _HostelFacilityState();
}

class _HostelFacilityState extends State<HostelFacility> {
  Color selected = Colors.white;
  Color notSelected = Color(0xff0E3C6E);
  List<bool> isSelected = [false, false, false, false];

  List hostel = [
    "assets/images/hostel1.png",
    "assets/images/hostel2.png",
    "assets/images/hostel3.png"
  ];
  int currentPos = 0;

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height / _figmaheight;
    _width = _width / _figmawidth;

    return Container(
      padding: EdgeInsets.all(_height * 31),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: _height * 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isSelected[index] = !isSelected[index];
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.all(_height * 9),
                          height: _height * 31,
                          width: _width * 69,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff0E3C6E)),
                            borderRadius: BorderRadius.circular(5),
                            color: isSelected[index] ? notSelected : selected,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.bed_rounded,
                                color:
                                    isSelected[index] ? selected : notSelected,
                                size: 17,
                              ),
                              Text(
                                "${4 - index}",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: isSelected[index]
                                        ? selected
                                        : notSelected,
                                    fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: _height * 200.0,
                viewportFraction: 0.5,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentPos = index;
                  });
                }),
            items: hostel.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: _width * 154,
                      height: _height * 137,
                      margin: EdgeInsets.symmetric(horizontal: _width * 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Image.asset(i));
                },
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: hostel.map((url) {
              int index = hostel.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentPos == index ? Color(0xff0E3C6E) : Colors.grey,
                ),
              );
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "GHJK Engineering Hostel",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: _width * 7),
                height: _height * 22,
                width: _width * 52,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.green,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      '4.3',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ), // <-- Text
                    Icon(
                      // <-- Icon
                      Icons.star,
                      size: 12,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: _height * 11,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/location1.png",
                height: _height * 18,
              ),
              SizedBox(
                width: _width * 8,
              ),
              const Text(
                "Lorem ipsum dolor sit amet, consectetur ",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          SizedBox(
            height: _height * 13,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(
            height: _height * 35,
          ),
          const Text(
            "Facilities",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: _height * 15,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/university1.png",
                height: _height * 26,
              ),
              SizedBox(
                width: _width * 8,
              ),
              const Text(
                "College in 400 mtrs",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          SizedBox(
            height: _height * 15,
          ),
          Row(
            children: [
              Image.asset(
                "assets/images/bath11.png",
                height: _height * 26,
              ),
              SizedBox(
                width: _width * 8,
              ),
              const Text(
                "Bathrooms: 2",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
