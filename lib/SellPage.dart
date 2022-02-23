import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sat extends StatefulWidget {
  const Sat({Key? key}) : super(key: key);

  @override
  _SatState createState() => _SatState();
}

class _SatState extends State<Sat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Satış",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Align(alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(width: 250,height: 150,decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(16)),

              child: TextButton(onPressed: () {}, child: Text("Fotoğraf Çek",textAlign:TextAlign.center,style: TextStyle(fontSize: 41,color: Colors.black),)),
            ),
            SizedBox(height: 20,),
            Container(width: 250,height: 150,decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(16)),

              child: TextButton(onPressed: () {}, child: Text("Galeriden Seç",textAlign:TextAlign.center,style: TextStyle(fontSize: 41,color: Colors.black))),
            )
          ],
        ),
      ),
    );
  }
}
