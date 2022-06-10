import 'package:flutter/material.dart';

//This class is the voice search button
class VoiceSearch extends StatelessWidget {
  const VoiceSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.mic,
          color: Color(0xff0E3C6E),
        ),
      ),
    );
  }
}
