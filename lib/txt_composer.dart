import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {
              
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: null),
            ),
          ),
        ],
      ),
    );
  }
}
