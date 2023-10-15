import 'package:flutter/material.dart';
import 'package:flutter_kakao_app/components/chat_icon_button.dart';
import 'package:flutter_kakao_app/components/other_chat.dart';
import 'package:flutter_kakao_app/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/my_chat.dart';

class ChatRoomScreen extends StatefulWidget {
  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  final List<MyChat> chats = [];
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "홍길동",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        actions: [
          Icon(FontAwesomeIcons.glasses, size: 20),
          SizedBox(width: 25),
          Icon(FontAwesomeIcons.bars, size: 20),
          SizedBox(width: 25),
        ],
      ),
      body: Container(
        color: Color(0xFFb2c7da),
        child: Scaffold(
          body: Column(
            children: [
              Expanded(child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      TimeLine(time: "2021년 1월 1일 금요일"),
                      OtherChat(
                          name: "홍길동",
                          text: "새해 복 많이 받으세요",
                          time: "오전 10:10",
                      ),
                      MyChat(text: "선생님도 많이 받으세요", time: "오후 2:15",),
                      ...List.generate(chats.length, (index) => chats[index]),
                    ],
                  ),
                ),
              )),
              Container(
                height: 60,
                color: Colors.white,
                child: Row(
                  children: [
                    ChatIconButton(icon: Icon(FontAwesomeIcons.square)),
                    Expanded(
                        child: TextField(
                          controller: _textController,
                          maxLines: 1,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                          onSubmitted: _handleSubmitted,
                        ),
                    ),
                    ChatIconButton(icon: Icon(FontAwesomeIcons.person)),
                    ChatIconButton(icon: Icon(FontAwesomeIcons.pen)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void _handleSubmitted(text){
  // _textController.clear();

}