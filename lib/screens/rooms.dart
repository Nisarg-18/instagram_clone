import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Rooms extends StatefulWidget {
  const Rooms({Key? key}) : super(key: key);

  @override
  _RoomsState createState() => _RoomsState();
}

class _RoomsState extends State<Rooms> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.video,
            color: Colors.white,
            size: 80,
          ),
          Text(
            'Video Chat \nwith Anyone',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Share a link to invite anyone to \nvideo chat, even if they don\'t have \nInstagram.',
            style: TextStyle(color: Colors.grey, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Create Room',
                style: TextStyle(color: Colors.blue, fontSize: 17),
              ))
        ],
      ),
    );
  }
}
