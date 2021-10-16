import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({Key? key}) : super(key: key);

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool like = false;
  bool love = false;
  int count = 0;
  addcount() {
    setState(() {
      count = count + 1;
      print("count");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FloatingActionButton.extended(
            onPressed: () {
              print("love");
              setState(() {
                if (love) {
                  love = false;
                } else {
                  love = true;
                }
              });
            },
            label: Icon(love ? Icons.favorite : Icons.favorite_border)),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          addcount();
          setState(() {
            if (like) {
              like = false;
              count = 0;
            } else {
              like = true;
              count = 1;
            }
          });
        },
        label: Text("like"),
        icon: Icon(
          like ? Icons.thumb_up : Icons.thumb_up_alt_outlined,
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Text("liked = $count"),
      ),
    );
  }
}
