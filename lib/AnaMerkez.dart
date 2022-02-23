import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milanbaros/profile.dart';

import 'body.dart';
import 'AnaSayfa.dart';
import 'Favorites.dart';
import 'Messages.dart';
import 'Sat.dart';

class AnaMerkez extends StatefulWidget {
  @override
  _AnaMerkezState createState() => _AnaMerkezState();
}

class _AnaMerkezState extends State<AnaMerkez> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    AnaSayfa(),
    Body(),
    Favorites(),
    Messages(),
    Profile()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(children: [
        Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Sat()));
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.orange,
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        unselectedLabelStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        selectedLabelStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Ana Sayfa"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sort,
              ),
              label: "Kategoriler"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
              ),
              label: "Favoriler"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
            ),
            label: "Mesajlar",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil"),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
