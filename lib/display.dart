import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'Home.dart';
class ProfilePage extends StatelessWidget {
   String name='';
  int age=0;
  String email='';
  String mobileNo='';
  String em;


   ProfilePage({required this.em,
   required this.name,required this.age,required this.email,required this.mobileNo,});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Profile'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Text(
            'Name: $name',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Age: $age',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Email: $email',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          Text(
            'Mobile No.: $mobileNo',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
    }
  }



