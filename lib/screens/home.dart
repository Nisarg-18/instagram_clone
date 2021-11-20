import 'package:flutter/material.dart';
import 'package:instagram_ui/screens/activity.dart';
import 'package:instagram_ui/screens/main_screen.dart';
import 'package:instagram_ui/screens/profile.dart';
import 'package:instagram_ui/screens/search.dart';
import 'package:instagram_ui/screens/upload.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List tabs = [MainScreen(), Search(), Upload(), Activity(), Profile()];
  int _bottomTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: tabs[_bottomTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(size: 36),
        elevation: 0,
        currentIndex: _bottomTab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 32.0,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: _bottomTab == 0
                  ? Icon(
                      Icons.home,
                      color: Colors.white,
                    )
                  : Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    )),
          BottomNavigationBarItem(
              label: 'Search',
              icon: _bottomTab == 1
                  ? Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    )
                  : Icon(Icons.search, color: Colors.white)),
          BottomNavigationBarItem(
              label: 'Upload',
              icon: _bottomTab == 2
                  ? Icon(
                      Icons.add_box,
                      color: Colors.white,
                    )
                  : Icon(Icons.add_box_outlined, color: Colors.white)),
          BottomNavigationBarItem(
              label: 'Activity',
              icon: _bottomTab == 3
                  ? Icon(
                      Icons.favorite,
                      color: Colors.white,
                    )
                  : Icon(Icons.favorite_border, color: Colors.white)),
          BottomNavigationBarItem(
              label: 'Profile',
              icon: _bottomTab == 4
                  ? CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/b99.jpg'),
                      ),
                    )
                  : CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/b99.jpg'),
                    )),
        ],
        onTap: (i) {
          setState(() {
            _bottomTab = i;
          });
        },
      ),
    );
  }
}
