import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset("assets/images/hamburger.png"),
          actions: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                margin: EdgeInsets.all(10),
                child: Image.asset("assets/images/search.png")),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Shop",
                  style: TextStyle(fontSize: 30,letterSpacing: 1),
                ),
                Text(
                  "Anthropologie",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,letterSpacing: 1),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildFlatButton("Home Decore", isSelect: true),
                buildFlatButton("Bath and Body"),
                buildFlatButton("Beauty"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 20,
                    spreadRadius: 1,
                  ),]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  FlatButton buildFlatButton(String text, {bool isSelect = false}) {
    return FlatButton(
      onPressed: () {
        print("flatbuton pressed");
      },
      child: Text(
        text,
        style: TextStyle(
            color: isSelect ? Colors.white : Colors.black, fontSize: 18),
      ),
      shape: StadiumBorder(),
      color: isSelect ? Colors.pink[100] : Colors.grey[300],
    );
  }
}
