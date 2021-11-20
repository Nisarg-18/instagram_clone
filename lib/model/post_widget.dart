import 'dart:math';

import 'package:flutter/material.dart';
import 'package:instagram_ui/model/profile_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  int random = Random().nextInt(8);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: profiles.length,
          itemBuilder: (context, i) {
            return Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 22,
                              backgroundColor: Color(0xFFca595a),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage(profiles[i].profilePhoto),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(profiles[i].instaName,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.more_vert,
                              size: 25,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  InkWell(
                      onDoubleTap: () {
                        setState(() {
                          profiles[i].isLiked = true;
                        });
                      },
                      child: Image.asset(profiles[i].postPhoto)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                profiles[i].isLiked = !profiles[i].isLiked;
                              });
                            },
                            icon: profiles[i].isLiked
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 35,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.comment,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Transform.rotate(
                            angle: -50 * 3.14 / 180,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            profiles[i].isSaved = !profiles[i].isSaved;
                          });
                        },
                        icon: profiles[i].isSaved
                            ? Icon(
                                Icons.bookmark,
                                color: Colors.white,
                                size: 35,
                              )
                            : Icon(
                                Icons.bookmark_outline,
                                color: Colors.white,
                                size: 35,
                              ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundImage:
                            AssetImage(profiles[random].profilePhoto),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Liked by ",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: profiles[random].instaName,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: " and others",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10, height: 30),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          profiles[i].instaName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: i == 0
                            ? Text(
                                profiles[i].caption,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18,
                                    color: Colors.white),
                              )
                            : Text(
                                "#99",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                    color: Colors.blue[600]),
                              ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 3),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'View all 10 comments',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 5),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        profiles[i].date,
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
