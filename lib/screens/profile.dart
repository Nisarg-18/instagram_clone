import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/model/profile_model.dart';
import 'package:instagram_ui/screens/post.dart';
import 'package:instagram_ui/screens/tagged.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    TabController _tabController =
        TabController(initialIndex: 0, length: 2, vsync: this);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.black,
      endDrawer: Drawer(
        elevation: 0,
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    'brooklyn 9-9',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 0.1,
                  height: 20,
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(
                    Icons.archive_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Archive',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.local_activity_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Your Activity',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.qr_code_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'QR Code',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.bookmark_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Saved',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.menu_book_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Close Friends',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.person_add_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Discover People',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.favorite_outline,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'COVID-19 Information \nCenter',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Divider(
                  thickness: 0.1,
                  color: Colors.grey,
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text('brooklynn 9-9'),
            Icon(Icons.arrow_drop_down, color: Colors.white),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              _scaffoldKey.currentState!.openEndDrawer();
            },
            icon: Icon(
              Icons.menu,
              size: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/b99.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4),
                        child: Text(
                          'Brooklynn 9-9',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '120',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '2M',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      '100',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: Size(MediaQuery.of(context).size.width, 25),
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey, width: 0.5),
                        borderRadius: BorderRadius.circular(7))),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Story Highlights',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.grid_on,
                    color: Colors.white,
                    size: 27,
                  )),
                  Tab(
                    icon: Icon(
                      Icons.person_outline,
                      color: Colors.white,
                      size: 27,
                    ),
                  )
                ]),
            Expanded(
              child: TabBarView(controller: _tabController, children: [
                Post(),
                Tagged(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
