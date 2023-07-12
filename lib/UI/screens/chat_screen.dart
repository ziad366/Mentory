import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentor Name'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.all(16.0),
              children: [
                // ChatMessage(
                //   message: 'Hi there!',
                //   isMe: false,
                // ),
                // ChatMessage(
                //   message: 'Hey, how are you?',
                //   isMe: true,
                // ),
                // ChatMessage(
                //   message: 'I\'m doing well, thanks for asking. How about you?',
                //   isMe: false,
                // ),
                // ChatMessage(
                //   message: 'I\'m good too. Thanks!',
                //   isMe: true,
                // ),
              ],
            ),
          ),
          Divider(height: 1.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.photo),
                  onPressed: () {
                    // TODO: Implement photo selection logic
                  },
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(16.0),
                    ),
                    textInputAction: TextInputAction.send,
                    onSubmitted: (value) {
                      // TODO: Implement message sending logic
                    },
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // TODO: Implement message sending logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String message;
  final bool isMe;

  ChatMessage({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    final messageAlign =
        isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final messageColor = isMe ? Colors.white : Colors.black;
    final messageDecoration = isMe
        ? BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
              bottomLeft: Radius.circular(16.0),
            ),
          )
        : BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          );

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: messageAlign,
        children: [
          Container(
            decoration: messageDecoration,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              message,
              style: TextStyle(
                color: messageColor,
                fontSize: 16.0,
              ),
            ),
          ),
          SizedBox(height: 4.0),
          Text(
            '2:30 PM',
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
