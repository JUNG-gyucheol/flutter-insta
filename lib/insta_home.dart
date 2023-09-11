import 'package:flutter/material.dart';
import 'package:instagram/insta_body.dart';

class InstaHome extends StatelessWidget {
  InstaHome({super.key});

  final topBar = AppBar(
    backgroundColor: const Color(0xfff8faf8),
    iconTheme: const IconThemeData(color: Colors.black),
    centerTitle: true,
    elevation: 1.0,
    leading: const Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: const <Widget>[
      Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(
            Icons.send,
          ))
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: const InstaBody(),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 42.0,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              IconButton(
                onPressed: null,
                icon: Icon(Icons.home, color: Colors.black),
              ),
              IconButton(onPressed: null, icon: Icon(Icons.search)),
              IconButton(onPressed: null, icon: Icon(Icons.add_box)),
              IconButton(onPressed: null, icon: Icon(Icons.favorite)),
              IconButton(onPressed: null, icon: Icon(Icons.account_box)),
            ],
          ),
        ),
      ),
    );
  }
}
