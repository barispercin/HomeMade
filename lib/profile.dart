import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'options.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Options()),
                );
              },
              icon: Icon(

                  Icons.more_vert_outlined,

                color: Colors.black,
              ))
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          height: 200,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.grey),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Ekrem_Imamoglu_%28cropped%29.jpg/220px-Ekrem_Imamoglu_%28cropped%29.jpg"))),

                        ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Rauf.cilasin",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15),),
                     ) ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Container(
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  Text("satışta",
                                      style: TextStyle(
                                        color: Colors.black,
                                      )),
                        ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Text("5",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  Text("takipçi",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Column(
                                children: [
                                  Text("25",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                  Text("takip",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                            ),
                                    ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],

          ),

        ),

      ),

    );
  }
}
