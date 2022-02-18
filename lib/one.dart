import 'package:flutter/material.dart';
import 'package:flutter_application_1/tow.dart';

class One extends StatelessWidget {
  const One({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Center(
        child: CircleAvatar(
          radius: 50,
          child: GestureDetector(
            child: Hero(
                tag: "add",
                child: Icon(
                  Icons.add_a_photo,
                  size: 50,
                )),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Two()));
            },
          ),
        ),
      )),
    );
  }
}
