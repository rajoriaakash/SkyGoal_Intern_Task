import 'package:flutter/material.dart';
class TextSearch extends StatelessWidget {
  const TextSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))
        ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "Search for colleges, schools..."
            ),
            onChanged: (val){
              null;
            },
          ),
        ),
    );
  }
}
