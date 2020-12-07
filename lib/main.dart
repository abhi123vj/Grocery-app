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
                  style: TextStyle(fontSize: 30, letterSpacing: 1),
                ),
                Text(
                  "Anthropologie",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        blurRadius: 20,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildColumntop("Candles", isSelected: true),
                        buildColumntop("vases"),
                        buildColumntop("bins"),
                        buildColumntop("floral"),
                        buildColumntop("decor"),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          buildColumnWithRow(
                              "1", "25", "Elementat Tin candle "),
                          buildColumnWithRow("2", "35", "Summer candle "),
                          buildColumnWithRow("3", "55", "Winter candle "),
                          buildColumnWithRow("4", "68", "dummy candle "),
                        ],
                      ),
                    ),
                    LineBar(),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Text("Holiday Special", style: TextStyle(fontSize: 24)),
                          Spacer(),
                          Text("View All", style: TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildColumnWithRow(String image, String price, String titile) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/candel$image.jpg",
                    fit: BoxFit.cover,
                  ))),
          SizedBox(
            height: 10,
          ),
          Text(
            titile,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "\$$price",
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }

  Column buildColumntop(String txt, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          txt,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey, fontSize: 18),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        )
      ],
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

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      child: Container(
        height: 5,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      ),
    );
  }
}
