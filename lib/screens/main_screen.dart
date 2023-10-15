import 'package:flutter/material.dart';
import 'package:flutter_kakao_app/screens/chat_screen.dart';
import 'package:flutter_kakao_app/screens/friend_screen.dart';
import 'package:flutter_kakao_app/screens/more_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Center(child: FriendScreen(),),
          Center(child: ChatScreen(),),
          Center(child: MoreScreen(),),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //현재 index를 알려주기
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        onTap: (value) {
          print("선택된 바텀메뉴 $value");
          setState(() {
            _selectedIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}