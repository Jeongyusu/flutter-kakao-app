import 'package:flutter/material.dart';
import 'package:flutter_kakao_app/screens/chat_room_screen.dart';
import 'package:flutter_kakao_app/screens/main_screen.dart';
import 'package:flutter_kakao_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),

      home: ChatRoomScreen(),
    );
  }
}


