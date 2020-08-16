import 'package:flutter/material.dart';

class ChatMessager extends StatelessWidget {

  ChatMessager(this.data);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(data['senderPhotoUrl']),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                data['imageUrl'] != null ?
                    Image.network(data['imgUrl']) :
                    Text (
                      data['text'],
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                Text(
                  data['senderName'],
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
