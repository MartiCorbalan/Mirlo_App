// components/Chat.dart
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Screen"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          "Welcome to the chat!",
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
