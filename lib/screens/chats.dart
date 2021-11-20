import 'package:flutter/material.dart';
import 'package:instagram_ui/model/profile_model.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: 'Search',
                fillColor: Colors.grey[900],
                filled: true,
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide(color: Colors.black)),
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.all(0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18))),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: profiles.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(profiles[i].profilePhoto),
                        ),
                        title: Text(
                          profiles[i].name,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          profiles[i].message,
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.camera_alt_outlined,
                            size: 30,
                            color: Colors.grey,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.1,
                      height: 15,
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
