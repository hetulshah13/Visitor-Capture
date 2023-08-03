import 'dart:async';
import 'dart:convert';
import 'SignIn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Model/person.dart';
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  static String em='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
          backgroundColor: Colors.deepPurpleAccent
      ),
      body: Container(
        padding: EdgeInsets.all(60),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          SizedBox( // <-- SEE HERE
          width: 300,
          child: TextField(
              onChanged: (value) {
                setState(() {
                  email = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),

              ),
            ),
          ), SizedBox(height: 16),
        SizedBox( // <-- SEE HERE
          width: 300,
          child: TextField(
              onChanged: (value) {
                setState(() {
                  password = value;
                });
              },
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
        ),
            SizedBox(height: 16),
        SizedBox( // <-- SEE HERE
          width: 150,
          child:ElevatedButton(
              onPressed: () async {
                var collection = FirebaseFirestore.instance.collection('users');
                var querySnapshot = await collection.get();
                for (var queryDocumentSnapshot in querySnapshot.docs) {
                  Map<String, dynamic> data = queryDocumentSnapshot.data();
                  var emai = data['email'];
                  var pass1 = data['pass'];
                  print(emai);
                  print(pass1);
                  if(email== emai && password==pass1){
                    em=emai;
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home( em: em,)),
                    );
                  }


                }

              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurpleAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text("Login")
            ),
        ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyForm()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurpleAccent, // background
                onPrimary: Colors.white, // foreground
              ),
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }

//Add document to Firestore with an auto-generated Id
    //await db.collection('users').add(appt.toJson());

  }

