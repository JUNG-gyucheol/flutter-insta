import 'package:flutter/material.dart';
import 'package:instagram/insta_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme:
              const ColorScheme.light().copyWith(primary: Colors.black),
          primaryTextTheme: const TextTheme(
              titleLarge: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme:
              const TextTheme(titleLarge: TextStyle(color: Colors.black)),
        ),
        home: InstaHome());
  }
}
