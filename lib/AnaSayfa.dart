import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milanbaros/drawer.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.green),
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Container(
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      icon: Icon(Icons.search),
                      border: InputBorder.none),
                )),
          ),
          backgroundColor: Colors.grey[300],
          endDrawer: Drawer(
              child: Scaffold(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child:
                                  Text("zaa", style: TextStyle(fontSize: 25)),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child:
                                  Text("zaa", style: TextStyle(fontSize: 25)),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child:
                                  Text("zaa", style: TextStyle(fontSize: 25)),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child:
                                  Text("zaa", style: TextStyle(fontSize: 25)),
                            )))),
              ],
            ),
          )),
          body: Column(children: [
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 10),
                  child: Container(
                    height: 40,
                    child: TextButton(
                        style:
                            TextButton.styleFrom(backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Text("Sırala",
                            style: TextStyle(fontSize: 25, color: Colors.red))),
                  ),
                )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Builder(
                        builder: (context) => Container(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 5, right: 10),
                              child: Container(
                                height: 40,
                                child: TextButton(
                                    style: TextButton.styleFrom(
                                        backgroundColor: Colors.white),
                                    onPressed: () {

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
          ]),
        ));
  }
}
