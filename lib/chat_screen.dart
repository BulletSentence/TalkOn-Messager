import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttermessager/txt_composer.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  void _sendMsgToDatabase({String text, File imgFile}){
    Firestore.instance.collection("mensagem").add({"text" : text});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
        elevation: 1,
      ),
      body: TextComposer(_sendMsgToDatabase),
    );
  }
}
