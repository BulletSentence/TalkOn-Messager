import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  bool _isComp = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            color: Colors.red,
            onPressed: () {
              
            },
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "Send Message"),
              onChanged: (text) {
                setState(() {
                  _isComp = text.isNotEmpty;
                });
              },
              onSubmitted: (text){

              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            color: Colors.red,
            onPressed: _isComp ? (){

            } : null,
          )
        ],
      ),
    );
  }
}
