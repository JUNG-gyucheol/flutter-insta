import 'package:flutter/material.dart';
import 'package:instagram/insta_stories.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaList extends StatelessWidget {
  const InstaList({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => index == 0
          ? SizedBox(
              height: deviceSize.height * 0.17,
              child: InstaStories(),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage("assets/images/insta_logo.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            "Instagram",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const IconButton(
                          onPressed: null, icon: Icon(Icons.more_vert))
                    ],
                  ),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Image.asset(
                    "assets/images/insta_logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Icon(FontAwesomeIcons.heart),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(FontAwesomeIcons.comment),
                          SizedBox(
                            width: 16.0,
                          ),
                          Icon(FontAwesomeIcons.paperPlane),
                        ],
                      ),
                      const Icon(FontAwesomeIcons.bookmark)
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Liked by pawankumar, pk and 528,331 others",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/insta_logo.png"),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Add a comment...",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "1 Day Ago",
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
    );
  }
}
