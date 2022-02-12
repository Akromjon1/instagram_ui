import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/feed_page.dart';
import 'package:instagram_ui/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        Feedpage.id: (context) => Feedpage(),
      },
    );
  }
}

