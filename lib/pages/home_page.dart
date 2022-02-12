import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/pages/feed_page.dart';
class HomePage extends StatefulWidget {
static final String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  var _pages = [
    Feedpage(),
    Feedpage(),
    Feedpage(),
    Feedpage(),
    Feedpage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram", style: TextStyle(color: Colors.blueGrey),),
        centerTitle: true,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.camera_alt_outlined,),
          color: Colors.blueGrey,
          onPressed: (){}
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.tv_outlined,),
              color: Colors.blueGrey,
              onPressed: (){}
          ),
          IconButton(
              icon: Icon(Icons.send,),
              color: Colors.blueGrey,
              onPressed: (){}
          ),

        ],
      ),
      body: _pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        currentIndex: _currentPage,
        onTap: (i){
          setState(() {
            _currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),

              label: "Home",
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.plus),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.heart),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "person",
          ),
      ],
      ),
    );
  }
}
