import 'dart:math';

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var flag = 0;
  var lv1 = TextEditingController();
  var lv2 = TextEditingController();
  var a = "";
  pressed() {
    if (lv1.text.isEmpty || lv2.text.isEmpty) {
      return;
    } else if (lv1.text.contains(RegExp(r'[\d]')) ||
        lv2.text.contains(RegExp(r'[\d]'))) {
      return;
    } else if (flag == 1) {
      return;
    } else {
      setState(() {
        Random rand = Random();
        double value = rand.nextDouble();
        Random random = Random();
        int value2 = random.nextInt(30) + 70;
        double fin = value2 + value;
        a = fin.toStringAsFixed(2) + "%";
        flag = 1;
      });
    }
  }

  pressed2() {
    setState(() {
      lv1.text = "";
      lv2.text = "";
      flag = 0;
      a = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.pink,
        body: SingleChildScrollView(
          
                  child: Stack(
                    
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/love6.jpeg",
                  height: 1000,
                  width: 1500,
                  fit: BoxFit.fitHeight,
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "♡♡ LOVE APP ♡♡",
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.pink,
                            fontStyle: FontStyle.italic),
                      ),
                      Image.asset('assets/Love4.png', height: 300, width: 700),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: TextField(
                          controller: lv1,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "  ♥♥♥♥ Enter Your Name ♥♥♥♥",
                              hintStyle: TextStyle(fontSize: 20,color: Colors.pink),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: TextField(
                          controller: lv2,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "  ♥♥♥♥ Enter Your Partner's Name  ♥♥",
                              hintStyle: TextStyle(fontSize: 20,color: Colors.pink),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25))),
                        ),
                      ),
                      Container(
                        child: Text(a,
                            style: TextStyle(color: Colors.white, fontSize: 36)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                        child: MaterialButton(
                          color: Colors.white,
                          height: 40,
                          minWidth: 150,
                          child: Text(
                            "Calculate Love",
                            style: TextStyle(fontSize: 18,color: Colors.pink),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {
                            pressed();
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 6, 20, 0),
                        child: MaterialButton(
                          color: Colors.white,
                          height: 40,
                          minWidth: 150,
                          child: Text(
                            "Clear ",
                            style: TextStyle(fontSize: 18,color: Colors.pink),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          onPressed: () {
                            pressed2();
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
