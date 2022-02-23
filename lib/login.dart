import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:milanbaros/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = '', pass = '';
    return GestureDetector(onTap: () {
      FocusScope.of(context).unfocus();
    },
      child: Scaffold(

        body:  SingleChildScrollView(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(width: 300,decoration:BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: InputDecoration(hintText: 'Email'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(width: 300,decoration:BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      onChanged: (value) {
                        pass = value;
                      },
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Password'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black)),
                    child: TextButton(
                        onPressed: () async {
                          try {
                            UserCredential userCredential = await FirebaseAuth
                                .instance
                                .signInWithEmailAndPassword(
                                    email: email, password: pass);
                            Navigator.pushNamed(context, 'AnaMerkez');
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                          }
                        },

                        child: Text('Login',style: TextStyle(fontSize: 20))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                          color: Colors.red,
                          width: 250.0,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.google,
                                    color: Color(0xffCE107C),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Login with Google',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18.0),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          color: Colors.lightBlue,
                          width: 250.0,
                          child: Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.facebookF,
                                    color: Color(0xff4754de),
                                  ),
                                  SizedBox(width: 10.0),
                                  Text(
                                    'Login with Facebook',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 18.0),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 85),
                        child: Row(
                          children: [
                            Text(
                              "Hesabın Yok mu ?",
                              style: TextStyle(fontSize: 20),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register()));
                                },
                                child: Text("Kayıt Ol",
                                    style: TextStyle(fontSize: 20)))
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
        ),

            ),
          );


  }
}
