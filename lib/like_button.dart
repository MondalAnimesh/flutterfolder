import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool like = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.favorite_border),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Liked");
          setState(() {
            if (like) {
              like = false;
            } else {
              like = true;
            }
          });
        },
        label: Text("like"),
        icon: Icon(
          like ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
        ),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
