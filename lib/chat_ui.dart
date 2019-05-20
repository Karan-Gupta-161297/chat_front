import 'package:chat_front/pages/call_screen.dart';
import 'package:chat_front/pages/camera_screen%20.dart';
import 'package:chat_front/pages/chat_screen.dart';
import 'package:chat_front/pages/status_screen.dart';
import 'package:flutter/material.dart';

class ChatUI extends StatefulWidget {
  @override
  _ChatUIState createState() => _ChatUIState();
}

class _ChatUIState extends State<ChatUI> with SingleTickerProviderStateMixin{

  TabController _tabController;

  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex:1,length:4);
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("ChatBot"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon : new Icon(Icons.camera_alt)), 
            new Tab(text: "CALLS",
            ),
            new Tab(text: "STATUS",
            ),
             
          ],

        ),
        actions: <Widget>[
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
        ],

      ),
      body:new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
          
          ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.red,
        child: new Icon(Icons.message,
        color: Colors.white),
        onPressed: () => print("Open Chats"),
      ),
    );
  }
}