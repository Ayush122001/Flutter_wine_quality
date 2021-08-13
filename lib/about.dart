import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "About",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "courier new",
            fontSize: 35.0,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.05,
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.black, width: 2.0),
              image: DecorationImage(
                image: NetworkImage(
                    "https://github.com/Ayush122001/Flutter_wine_quality/blob/master/wine.jpg?raw=true"),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Text(
              "Wine quality refers to the factors that go into producing a wine, as well as the indicators or characteristics that tell you if the wine is of high quality.",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Text(
              "We are basically using Deep learning(DL) model behind the seen for predicting Quality",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.01),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
            child: Text(
              "Our Results:\nBest: QLTY > 90% \nGood: QLTY > 60% \nCan Improve: QLTY > 90%",
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
