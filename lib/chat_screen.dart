import 'package:flutter/material.dart';
import 'package:fluttermessager/txt_composer.dart';

class ChatScreen extends StatefulWidget {

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
        elevation: 1,
      ),
      body: TextComposer(
          (text){
           print(text);
          }
      ),
    );
  }
}
