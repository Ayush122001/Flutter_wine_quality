import 'package:app/created.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:app/about.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

// ignore: avoid_init_to_null
var result = null;
// ignore: non_constant_identifier_names
var fixed_acidity;
// ignore: non_constant_identifier_names
var volatile_acidity;
// ignore: non_constant_identifier_names
var citric_acid;
// ignore: non_constant_identifier_names
var residual_sugar;
var chlorides;
// ignore: non_constant_identifier_names
var free_so2;
// ignore: non_constant_identifier_names
var total_so2;
var density;
var pH;
var sulphates;
var alcohol;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ag() async {
    var r = await http.get(
      Uri.http(
        "13.233.146.148",
        "cgi-bin/get.py",
        {
          "fixed_acidity": fixed_acidity,
          "volatile_acidity": volatile_acidity,
          "citric_acid": citric_acid,
          "residual_sugar": residual_sugar,
          "chlorides": chlorides,
          "free_so2": free_so2,
          "total_so2": total_so2,
          "density": density,
          "pH": pH,
          "sulphates": sulphates,
          "alcohol": alcohol
        },
      ),
    );
    setState(() {
      /*print(fixed_acidity);
      print(volatile_acidity);
      print(citric_acid);
      print(residual_sugar);
      print(chlorides);
      print(free_so2);
      print(total_so2);
      print(density);
      print(pH);
      print(sulphates);
      print(alcohol);*/
      result = r.body;
      //var output = "Good Quality";
      //result = output;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        backgroundColor: Colors.white,
        child: Center(
          //////////////////
          // Query Button //
          //////////////////
          child: IconButton(
            mouseCursor: MouseCursor.defer,
            iconSize: 29.0,
            onPressed: ag,
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30.0,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        //////////////
        // HEADING ///
        //////////////
        backgroundColor: Colors.pink,
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: IconButton(
            alignment: Alignment.topLeft,
            /////////////////
            // SimpleDialog //
            /////////////////
            onPressed: () => showDialog(
              context: context,
              builder: (BuildContext context) => SimpleDialog(
                backgroundColor: Colors.white,
                title: Text(
                  "Wine Quality Prediction App",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.bold,
                    fontSize: 26.0,
                    fontFamily: "courier new",
                  ),
                ),
                children: [
                  Column(
                    children: [
                      //////////
                      // About//
                      /////////
                      Card(
                        color: Colors.pinkAccent,
                        shadowColor: Colors.grey,
                        borderOnForeground: true,
                        child: ListTile(
                          trailing: IconButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => About(),
                              ),
                            ),
                            icon: Icon(Icons.apps_rounded),
                          ),
                          title: Text(
                            "About App",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: "courier new",
                            ),
                          ),
                        ),
                      ),
                      ///////////////
                      // Create By //
                      //////////////
                      Card(
                        color: Colors.pinkAccent,
                        shadowColor: Colors.grey,
                        borderOnForeground: true,
                        child: ListTile(
                          trailing: IconButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Created(),
                              ),
                            ),
                            icon: Icon(Icons.apps_rounded),
                          ),
                          title: Text(
                            "Developers",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: "courier new",
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            icon: Icon(
              Icons.contacts,
              color: Colors.black,
              size: 35.0,
            ),
          ),
        ),

        title: Center(
          child: Text(
            "Wine Quality [...]",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "courier new",
              fontSize: 35.0,
            ),
          ),
        ),
      ),
      //////////
      // body //
      //////////
      body: Container(
        color: Colors.white30,
        //color: Colors.indigo,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.0,
            ),
            //////////////
            /// Result //
            /////////////
            Text(
              // ignore: unnecessary_brace_in_string_interps
              "Result : ${result}",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontFamily: "courier new",
                fontSize: 30.0,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //////////////
            // Expanded //
            /////////////
            Expanded(
              child: SafeArea(
                child: ListView(
                  children: [
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (fa) => fixed_acidity = fa,
                        style: TextStyle(
                          fontFamily: "courier new",
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                        decoration: InputDecoration(hintText: "Fixed Acidity"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (va) => volatile_acidity = va,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration:
                            InputDecoration(hintText: "Volatile Acidity"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (ca) => citric_acid = ca,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Citric Acid"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (rs) => residual_sugar = rs,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Residual Sugar"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (c) => chlorides = c,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Chlorides"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (fso2) => free_so2 = fso2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Free SO2"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (tso2) => total_so2 = tso2,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Total SO2"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (d) => density = d,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Density"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (ph) => pH = ph,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "pH"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (sul) => sulphates = sul,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Sulphates"),
                      ),
                    ),
                    Card(
                      color: Colors.white38,
                      child: TextField(
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        onChanged: (al) => alcohol = al,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "courier new",
                          fontSize: 24.0,
                        ),
                        decoration: InputDecoration(hintText: "Alcohol"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
