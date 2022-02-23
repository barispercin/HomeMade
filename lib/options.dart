import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Options extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                )),
            title: Text(
              "Ayarlar",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
          ),
          body: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        "Hesap",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        "E-Posta",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        "Konum",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                        ),
                      ),
                      child: Text(
                        "Tema",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(onPressed:(){}, child: Text("Çıkış Yap"))
                  ],
                ),
              )));
    }
  }


