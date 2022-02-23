import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.black,
              ))
        ],
        title: Text(
          "Favoriler",
          style: TextStyle(color: Colors.red),
        ),
      ),

      body: Container(
        child: Column(),
      ),
    );
  }
}
