import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {
  InstaStories({super.key});

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      const Text(
        "Stories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Row(
        children: const <Widget>[
          Icon(Icons.play_arrow),
          Text(
            "Watch All",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      )
    ],
  );

  final stories = Expanded(
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
          alignment: const Alignment(0.0, 0.9),
          children: <Widget>[
            Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/insta_logo.png"),
                ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
            ),
            index == 0
                ? const Positioned(
                    right: 10.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 10.0,
                      child: Icon(
                        Icons.add,
                        size: 14.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[topText, stories],
      ),
    );
  }
}
