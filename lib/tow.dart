import 'package:flutter/material.dart';

class Two extends StatelessWidget {
  const Two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Center(
        child: Container(
          child: Hero(
              tag: "add",
              child: Icon(
                Icons.photo,
                size: 50,
              )),
        ),
      )),
    );
  }
}
