import 'package:flutter/material.dart';

class Created extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "Developers",
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
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://github.com/Ayush122001/Flutter_wine_quality/blob/master/ayush.jpg?raw=true"),
            ),
          ),
          Center(
            child: Text(
              "Ayush Ganatra",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Shrishti
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.05,
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://github.com/Ayush122001/Flutter_wine_quality/blob/master/shrishti.jpg?raw=true"),
            ),
          ),
          Center(
            child: Text(
              "Shrishti Kapoor",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Laveena
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.05,
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://github.com/Ayush122001/Flutter_wine_quality/blob/master/laveena.jpg?raw=true"),
            ),
          ),
          Center(
            child: Text(
              "Laveena Jethani",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Tanushree
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.05,
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://github.com/Ayush122001/Flutter_wine_quality/blob/master/tanushree.jpg?raw=true"),
            ),
          ),
          Center(
            child: Text(
              "Tanushree jain",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          //Ayush Garg
          Container(
            margin: EdgeInsets.all(
              MediaQuery.of(context).size.height * 0.05,
            ),
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://github.com/Ayush122001/Flutter_wine_quality/blob/master/ayushGarg.jpg?raw=true"),
            ),
          ),
          Center(
            child: Text(
              "Ayush Garg",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 26.0,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
