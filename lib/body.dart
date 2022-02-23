import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Kategoriler",
            style: TextStyle(color: Colors.red),
          ),
        ),
        body: Row(
          children: [
            Container(
                color: Colors.grey.shade300,
                width: 110,
                child: Column(
                  children: [
                    Container(
                      width: 200,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: selectedIndex == 0
                                  ? Colors.white
                                  : Colors.grey.shade300,
                              primary: selectedIndex == 0
                                  ? Colors.red
                                  : Colors.blue),
                          onPressed: () {
                            setState(() {
                              selectedIndex = 0;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                size: 50,
                              ),
                              Text(
                                "Yiyecek",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )
                            ],
                          )),
                    ),
                    Container(
                      width: 200,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: selectedIndex == 1
                                  ? Colors.white
                                  : Colors.grey.shade300,
                              primary: selectedIndex == 1
                                  ? Colors.red
                                  : Colors.blue),
                          onPressed: () {
                            setState(() {
                              selectedIndex = 1;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.local_florist_rounded,
                                size: 50,
                              ),
                              Text("Takı", style: TextStyle(fontSize: 20))
                            ],
                          )),
                    ),
                    Container(
                      width: 200,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: selectedIndex == 2
                                  ? Colors.white
                                  : Colors.grey.shade300,
                              primary: selectedIndex == 2
                                  ? Colors.red
                                  : Colors.blue),
                          onPressed: () {
                            setState(() {
                              selectedIndex = 2;
                            });
                          },
                          child: Column(
                            children: [
                              Icon(
                                Icons.ac_unit_outlined,
                                size: 50,
                              ),
                              Text("Ev Aletleri",
                                  style: TextStyle(fontSize: 20))
                            ],
                          )),
                    )
                  ],
                )),
            Expanded(
                child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          width: 300,
                          height: 75,
                          child: TextButton(
                              onPressed: () {},
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    selectedIndex == 0
                                        ? "Sarma"
                                        : selectedIndex == 1
                                            ? "Kolye"
                                            : "süpürge",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )))),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          width: 300,
                          height: 75,
                          child: TextButton(
                              onPressed: () {},
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    selectedIndex == 0
                                        ? "Salça"
                                        : selectedIndex == 1
                                            ? "Küpe"
                                            : "Sandalye",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )))),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          width: 300,
                          height: 75,
                          child: TextButton(
                              onPressed: () {},
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    selectedIndex == 0
                                        ? "İçli Köfte"
                                        : selectedIndex == 1
                                            ? "Bileklik"
                                            : "Masa",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  )))),
                    ])))
          ],
        ));
  }
}
