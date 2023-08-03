import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/QRgen.dart';
import 'package:untitled/QRread.dart';
import 'QR.dart';
import 'display.dart';
import 'QRgen.dart';

class Home extends StatelessWidget {
  String em;
  Home({required this.em,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            onPressed: () => Navigator.of(context).pop(),
          ),
        title: Text('Home'),
          backgroundColor: Colors.deepPurpleAccent
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox( // <-- SEE HERE
                  width: 150,
                  height: 200,
                  child:ElevatedButton(
                  onPressed: () {

                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                  child: Text('Scan'),
                ),
                ),
                SizedBox( // <-- SEE HERE
                  width: 150,
                  height: 200,
                  child:ElevatedButton(
                  onPressed: () {
                    // Do something when button 2 is pressed
                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                  child: Text('Leads'),
                ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox( // <-- SEE HERE
                  width: 150,
                  height: 200,
                  child:ElevatedButton(
                    onPressed: () async {
                    var collection = FirebaseFirestore.instance.collection('users');
                    var querySnapshot = await collection.get();
                    for (var queryDocumentSnapshot in querySnapshot.docs) {
                    Map<String, dynamic> data = queryDocumentSnapshot.data();
                    var emai = data['email'];
                    print(emai);
                    if (em == emai) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfilePage(em: em, name: data['name'], age: data['age'], email: data['email'], mobileNo: data['mno'],)),
                      );
                    }

                    }},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Text('Settings'),
                  ),
                ),
                SizedBox( // <-- SEE HERE
                  width: 150,
                  height: 200,
                  child:ElevatedButton(
                    onPressed: () async {var collection = FirebaseFirestore.instance.collection('users');
                    var querySnapshot = await collection.get();
                    for (var queryDocumentSnapshot in querySnapshot.docs) {
                    Map<String, dynamic> data = queryDocumentSnapshot.data();
                    var emai = data['email'];
                    print(emai);
                    if (em == emai) {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QRgen(em: em, name: data['name'], age: data['age'], email: data['email'], mobileNo: data['mno'],)),
                    );
                      // Do something when button 2 is pressed
                    }}},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurpleAccent, // background
                      onPrimary: Colors.white, // foreground
                    ),
                    child: Text('Generate'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}