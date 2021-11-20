import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  var data;
  bool isLoading = true;
  // lXz-3IFzjBQbuM075yY6DO60ozZkXnz9UG6FG2sWCZA API Key
  @override
  void initState() {
    super.initState();
    getData();
  }

  Future getData() async {
    try {
      var resultData = await http.get(Uri.parse(
          'https://api.unsplash.com/search/photos?per_page=100&client_id=lXz-3IFzjBQbuM075yY6DO60ozZkXnz9UG6FG2sWCZA&query=food&orientation=squarish'));
      var jData = jsonDecode(resultData.body);
      setState(() {
        data = jData['results'];
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: isLoading
          ? Center(
              child: SpinKitFadingFour(
              color: Colors.white,
            ))
          : SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 75,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                hintText: 'Search',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                                fillColor: Colors.black12,
                                contentPadding: EdgeInsets.all(0),
                                hintStyle: TextStyle(color: Colors.grey),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                )),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 30,
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.white)),
                                height: 30,
                                width: 65,
                                child: Center(
                                  child: Text(
                                    'IGTV',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.white)),
                                height: 30,
                                width: 80,
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(
                                        Icons.shopping_bag,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                      Text(
                                        'Shop',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.white)),
                                height: 30,
                                width: 65,
                                child: Center(
                                  child: Text(
                                    'NYPD',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.white)),
                                height: 30,
                                width: 65,
                                child: Center(
                                  child: Text(
                                    'Food',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.white)),
                                height: 30,
                                width: 75,
                                child: Center(
                                  child: Text(
                                    'Sitcoms',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(7),
                                    border: Border.all(color: Colors.white)),
                                height: 30,
                                width: 75,
                                child: Center(
                                  child: Text(
                                    'Funny',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                        // shrinkWrap: true,
                        itemCount: data == null ? 0 : data.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4),
                        itemBuilder: (context, i) {
                          return InkWell(
                            onLongPress: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      elevation: 1,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      contentPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.black,
                                      content: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.5,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, left: 10),
                                              child: Row(
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage:
                                                        NetworkImage(data[i]
                                                            ['urls']['small']),
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                    'Random User',
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
                                              child: Image.network(
                                                  data[i]['urls']['small']),
                                            ),
                                          ],
                                        ),
                                      ),
                                      actions: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            IconButton(
                                              onPressed: () {},
                                              icon: Icon(
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
                                              onPressed: () {},
                                              icon: Icon(
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
                              child: Image(
                                image: NetworkImage(data[i]['urls']['small']),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
    );
  }
}
