import 'package:flutter/material.dart';
import 'package:skygoal_intern_task/Screens/Home/home-5.dart';
import 'package:skygoal_intern_task/Screens/Home/home-7.dart';
//Returns appropriate widget according to the tab selected in Tab Bar
class CollegeInfo extends StatelessWidget {
  final option;

  const CollegeInfo({Key? key, this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (option) {
      case 0:
        return AboutCollege();
        break;
      case 1:
        return HostelFacility();
        break;
      case 2:
        return Container();
        break;
      default:
        return Container();
    }
  }
}
