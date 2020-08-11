import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {

  TextComposer(this.sendMsg);
  Function (String) sendMsg;

  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  final TextEditingController _sendButtonctlr = TextEditingController();
  bool _isComp = false;

  void _reset(){
    _sendButtonctlr.clear();
    setState(() {
      _isComp = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.photo_camera),
            onPressed: () {
              
            },
          ),
          Expanded(
            child: TextField(
              controller: _sendButtonctlr,
              decoration: InputDecoration.collapsed(hintText: "Send Message"),
              onChanged: (text) {
                setState(() {
                  _isComp = text.isNotEmpty;
                });
              },
              onSubmitted: (text){
                widget.sendMsg(text);
                _reset();
              },
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: _isComp ? (){
              widget.sendMsg(_sendButtonctlr.text);
              _reset();
            } : null,
          )
        ],
      ),
    );
  }
}
