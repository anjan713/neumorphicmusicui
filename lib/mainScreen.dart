import 'detailsScreen.dart';
import 'package:flutter/material.dart';
import 'customContainer.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var isFavourite = false;
  List audioList = [
    {
      'songname': "Blinding lights",
      'author name': 'Weeknd ',
      'imageUrl':
          'https://s3.amazonaws.com/media.thecrimson.com/photos/2020/04/02/211518_1343746.jpg',
      'Favourite': false,
    },
    {
      'songname': "Heartless",
      'author name': 'Weeknd ',
      'imageUrl':
          'https://s3.amazonaws.com/media.thecrimson.com/photos/2020/04/02/211518_1343746.jpg',
      'Favourite': false,
    },
    {
      'songname': "Alone Again ",
      'author name': 'Weeknd ',
      'imageUrl':
          'https://s3.amazonaws.com/media.thecrimson.com/photos/2020/04/02/211518_1343746.jpg',
      'Favourite': false,
    },
    {
      'songname': "Escape from LA ",
      'author name': 'Weeknd ',
      'imageUrl':
          'https://s3.amazonaws.com/media.thecrimson.com/photos/2020/04/02/211518_1343746.jpg',
      'Favourite': false,
    },
     {
      'songname': "After Hours ",
      'author name': 'Weeknd ',
      'imageUrl':
          'https://s3.amazonaws.com/media.thecrimson.com/photos/2020/04/02/211518_1343746.jpg',
      'Favourite': false,
    },
     {
      'songname': "SnowChild",
      'author name': 'Weeknd ',
      'imageUrl':
          'https://s3.amazonaws.com/media.thecrimson.com/photos/2020/04/02/211518_1343746.jpg',
      'Favourite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Spacer(
                  flex: 1,
                ),
                Text(
                  "My PlayList",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 600,
              child: ListView.builder(
                itemCount: audioList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () {
                          print(audioList[index]);
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return DetailScreen(
                              detailaudiodata: audioList[index],
                            );
                          }));
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                audioList[index]["imageUrl"],
                              ),
                              radius: 25),
                          title: Text(audioList[index]["songname"]),
                          subtitle: Text(audioList[index]["author name"]),
                          trailing: SizedBox(
                            width: 120,
                            child: Row(
                              children: [
                                IconButton(
                                    icon: audioList[index]["Favourite"] ?? false
                                        ? Icon(
                                            Icons.favorite_rounded,
                                            color: Colors.red,
                                          )
                                        : Icon(Icons.favorite_outline_outlined),
                                    onPressed: () {
                                      setState(() {
                                        isFavourite = !isFavourite;
                                        print(audioList[index]["Favourite"]);
                                        // audioList[index]["favourite"]= isFavourite ;
                                        audioList[index]["Favourite"] =
                                            !audioList[index]["Favourite"];
                                      });
                                    }),
                                Icon(Icons.more_horiz),
                                CustomContainer(
                                  child: Icon(Icons.play_arrow_outlined),
                                  myradius: 5,
                                  shapes: true,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
