import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instagram_ui/model/post_widget.dart';
import 'package:instagram_ui/model/profile_model.dart';
import 'package:instagram_ui/screens/dm.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
        ),
        title: Center(
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () {
              _controller.animateTo(0,
                  duration: Duration(seconds: 1), curve: Curves.linear);
            },
            child: Image.asset(
              'assets/logo1.png',
              height: MediaQuery.of(context).size.height / 13,
            ),
          ),
        ),
        actions: [
          Transform.rotate(
            angle: -40 * 3.14 / 180,
            child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DM();
                  }));
                },
                icon: Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 30.0,
                )),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _controller,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5.5,
                child: ListView.builder(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: profiles.length,
                    itemBuilder: (context, i) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          i == 0
                              ? Column(
                                  children: [
                                    Stack(children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundImage:
                                            AssetImage('assets/b99.jpg'),
                                      ),
                                      Positioned(
                                        top: 65.0,
                                        left: 65.0,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.lightBlue,
                                              borderRadius:
                                                  BorderRadius.circular(50.0)),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.white,
                                          ),
                                        ),
                                      )
                                    ]),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Your Story',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.0),
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 48.0,
                                      backgroundColor: Color(0xFfe96d78),
                                      child: CircleAvatar(
                                        radius: 44,
                                        backgroundImage: AssetImage(
                                            profiles[i - 1].profilePhoto),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      profiles[i - 1].instaName,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17.0),
                                    )
                                  ],
                                ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      );
                    }),
              ),
              Post(),
            ],
          ),
        ),
      ),
    );
  }
}
