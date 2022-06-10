import 'package:flutter/material.dart';
import 'package:skygoal_intern_task/Screens/Home/Home-4/wrapper.dart';
//Screen about long College details
int condition = 0;

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  ScrollController _scrollController = ScrollController(); //scroll controller to change app bar as scrolling
  double _scrollPosition = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    double _figmaheight = 926;
    double _figmawidth = 428;
    _height = _height / _figmaheight;
    _width = _width / _figmawidth;

    return Scaffold(
      appBar: _scrollPosition == 0
          ? AppBar( //app bar when at top of screen
              leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
              backgroundColor: Color(0xff0E3C6E),
              actions: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_border_rounded)),
                  ),
                )
              ],
            )
          : AppBar( //app bar when screen is scrolled
              title: const Text('GHJK Engineering college'),
              backgroundColor: Color(0xff0E3C6E),
            ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset("assets/images/ghjk_home4.png"), //college image
                Container( //college name and details
                    padding: EdgeInsets.symmetric(
                        vertical: _height * 16, horizontal: _width * 19),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text( //college name
                          "GHJK Engineering College",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Row(// college description and rating
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: _height * 56,
                              width: _width * 298,
                              child: const Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ),
                            Container(
                              height: _height * 74,
                              width: _width * 52,
                              padding: EdgeInsets.symmetric(
                                  vertical: _height * 8,
                                  horizontal: _width * 10),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.green,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '4.3',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ), // <-- Text
                                  Icon(
                                    // <-- Icon
                                    Icons.star,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                Container( //tab bar to switch between various sections of college details - About College- Hostel Facility- Q&A- Events
                  color: Colors.grey[200],
                  child: TabBar(
                      controller: _tabController,
                      onTap: (index) {
                        setState(() {
                          condition = index;
                        });
                      },
                      tabs: const [
                        Tab(
                          child: Text(
                            "About college",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Hostel facility",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Q & A",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Events",
                            style: TextStyle(color: Colors.black, fontSize: 9),
                          ),
                        )
                      ]),
                ),
                CollegeInfo( //Widget to return the rest content according to tab selected in tab bar
                  option: condition,
                ),
              ],
            ),
          )),
          Padding( //bottom button to apply for college
            padding: EdgeInsets.symmetric(
                vertical: _height * 16, horizontal: _width * 30),
            child: Container(
              width: _width * 366,
              decoration: BoxDecoration(
                color: Color(0xff0E3C6E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const ElevatedButton(
                  onPressed: null,
                  child: Text(
                    "Apply Now",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
