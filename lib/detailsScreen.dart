import 'package:flutter/material.dart';
import 'customContainer.dart';

class DetailScreen extends StatelessWidget {
 final Map detailaudiodata;
  DetailScreen({Key key, this.detailaudiodata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
                  child: Column(children: [
      SizedBox(
          height: 30,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 1,
            ),
          CustomBackButton(
            child:Icon(Icons.keyboard_arrow_left_sharp),
              shapes: true, 
          ),
            Spacer(
              flex: 3,
            ),
            Text(
              "Now Playing",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(
              flex: 3,
            ),
            CustomContainer(
              child: Icon(Icons.more_horiz_outlined),
              shapes: true,
            ),
            Spacer(
              flex: 1,
            ),
          ],
      ),
      SizedBox(
          height: 20,
      ),
      CircleAvatar(
          radius: 180,
          backgroundImage: NetworkImage(
            detailaudiodata["imageUrl"]
              ),
      ),
      SizedBox(
          height: 30,
      ),
      SizedBox(
          height: 20,
          child: CustomPaint(
            painter: MyCustomPainter(),
          ),
      ),
      Text(
          detailaudiodata["songname"],
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
      ),
      SizedBox(
          height: 10,
      ),
      Text(
          detailaudiodata["author name"],
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 20),
      ),
      SizedBox(
          height: 40,
      ),
      Row(
          children: [
            Spacer(
              flex: 1,
            ),
            CustomContainer(
              child: Icon(
                Icons.arrow_left_outlined,
                color: Colors.orange,
                size: 44,
              ),
              shapes: true,
            ),
            Spacer(
              flex: 1,
            ),
            CustomContainer(
              child: Icon(
                Icons.play_arrow,
                color: Colors.orange,
                size: 44,
              ),
              shapes: false,
            ),
            Spacer(
              flex: 1,
            ),
            CustomContainer(
              child: Icon(
                Icons.arrow_right,
                color: Colors.orange,
                size: 44,
              ),
              shapes: true,
            ),
            Spacer(
              flex: 1,
            ),
          ],
      ),
    ]),
        ));
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint linePaint = Paint()..strokeWidth = 10..color=Colors.orange..strokeCap=StrokeCap.round;
    canvas.drawLine(Offset(-150, 100), Offset(140, 100), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
