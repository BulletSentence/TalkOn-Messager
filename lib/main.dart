import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttermessager/chat_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TalkOn Messager',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ChatScreen(),
    );
  }
}

