import 'package:flutter/material.dart';
import 'package:instagram_ui/model/profile_model.dart';
import 'package:instagram_ui/screens/chats.dart';
import 'package:instagram_ui/screens/rooms.dart';

class DM extends StatefulWidget {
  const DM({Key? key}) : super(key: key);

  @override
  _DMState createState() => _DMState();
}

class _DMState extends State<DM> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
          ),
          elevation: 0,
          backgroundColor: Colors.black,
          title: Row(
            children: [
              Text(
                'Brooklynn 9-9',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.arrow_drop_down_outlined,
                color: Colors.white,
              )
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.video_camera_front_outlined,
                size: 30,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                size: 30,
              ),
            )
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            labelStyle: TextStyle(fontSize: 17),
            tabs: [
              Tab(text: 'Chats'),
              Tab(
                text: 'Rooms',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [Chats(), Rooms()],
        ),
      ),
    );
  }
}
