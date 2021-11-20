import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui/model/profile_model.dart';

class Tagged extends StatefulWidget {
  const Tagged({Key? key}) : super(key: key);

  @override
  _TaggedState createState() => _TaggedState();
}

class _TaggedState extends State<Tagged> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: profiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (context, i) {
          return InkWell(
            onLongPress: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      contentPadding: EdgeInsets.zero,
                      backgroundColor: Colors.black,
                      content: Container(
                        height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 10),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage(profiles[i].profilePhoto),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    profiles[i].instaName,
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Image.asset(profiles[i].profilePhoto),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.favorite_outline,
                                      color: Colors.white,
                                      size: 30,
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
                              angle: -40 * 3.14 / 180,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
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
                                      size: 30,
                                      color: Colors.white,
                                    )
                                  : Icon(
                                      Icons.bookmark_outline,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                            ),
                          ],
                        )
                      ],
                    );
                  });
            },
            child: Container(
              child: Image.asset(profiles[i].profilePhoto),
            ),
          );
        });
  }
}
