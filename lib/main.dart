import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TalkOn Messager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(),
    );
  }
}

