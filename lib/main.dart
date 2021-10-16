import 'package:flutter/material.dart';
import 'package:myworld/like_button.dart';
import 'package:myworld/login.dart';

void main(List<String> args) {
  runApp(MyWorld());
}

class MyWorld extends StatelessWidget {
  const MyWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "Main",
      routes: {
        "Main": (context) => Login(),
        "LikePage": (context) => LikeButton()
      },
    );
  }
}
