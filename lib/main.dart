import 'package:chat_front/chat_ui.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "ChatUI",
      theme: new ThemeData(
        primaryColor: Colors.red,
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: new ChatUI(),
    );
  }
}