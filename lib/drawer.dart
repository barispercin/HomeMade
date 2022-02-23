import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawers extends StatefulWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  _DrawersState createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: 55,
          color: Colors.orange,
          child: TextButton(
              onPressed: () {},
              child: Align(
                  alignment: Alignment.center,
                  child: Text("Sonuçları Göster",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35,
                          fontWeight: FontWeight.bold))))),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.red,
                  ),
                )),
            Text(
              "Filtrele",
              style: TextStyle(color: Colors.red, fontSize: 25),
            ),
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Temizle",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Container(
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white),
                          onPressed: () {},
                          child: Text("Sırala",
                              style:
                              TextStyle(fontSize: 25, color: Colors.red))),
                    ),
                  )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Builder(
                      builder: (context) => Container(
                          child: Padding(
                            padding:
                            const EdgeInsets.only(top: 5, right: 10),
                            child: Container(
                              height: 40,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {
                                    Scaffold.of(context).openEndDrawer();
                                  },
                                  child: Text(
                                    "Filtrele",
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.red),
                                  )),
                            ),
                          ))))
            ],
          ),
          Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ))),
              child: TextButton(
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "zaa",
                          style: TextStyle(fontSize: 25),
                        ),
                      )))),
          Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ))),
              child: TextButton(
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("zaa", style: TextStyle(fontSize: 25)),
                      )))),
          Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ))),
              child: TextButton(
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("zaa", style: TextStyle(fontSize: 25)),
                      )))),
          Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ))),
              child: TextButton(
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("zaa", style: TextStyle(fontSize: 25)),
                      )))),
          Container(
              width: 300,
              height: 75,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        width: 1,
                      ))),
              child: TextButton(
                  onPressed: () {},
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("zaa", style: TextStyle(fontSize: 25)),
                      )))),
        ],
      ),
    );
  }
}
