import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          // leading: const Icon(Icons.home),
          title: const Center(
            child: Text("Login Please"),
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              verticalDirection: VerticalDirection.down,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      width: 300,
                      child: TextField(),
                    ),
                    const SizedBox(
                      width: 300,
                      height: 100,
                      child: TextField(),
                    ),
                    SizedBox(
                      width: 90,
                      child: FloatingActionButton.extended(
                        onPressed: () async {
                          print("object");
                          var x = await showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text('login'),
                              content: const Text('do you want to login'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, "false"),
                                  child: const Text('no'),
                                ),
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, "true"),
                                  child: const Text('yes'),
                                ),
                              ],
                            ),
                          );
                          print("///////////////0");
                          //  print(x == "true");
                          if (x == "true") {
                            Navigator.pushNamed(context, "LikePage");
                          }
                        },
                        label: const Text("login"),
                        backgroundColor: Colors.orange,
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3680219/pexels-photo-3680219.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"))),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
        ));
  }
}
