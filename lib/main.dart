import 'package:flutter/material.dart';
import 'package:flutter_snake_game/roomLogic/main_menu_screen.dart';
import 'package:flutter_snake_game/roomLogic/create_room_screen.dart';
import 'package:flutter_snake_game/roomLogic/join_room_screen.dart';
import 'package:flutter_snake_game/gameLogic/game.dart';
import 'package:flutter_snake_game/utils/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Snake',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
      ),
      routes: {
        MainMenuScreen.routeName: (context) => const MainMenuScreen(),
        JoinRoomScreen.routeName: (context) => const JoinRoomScreen(),
        CreateRoomScreen.routeName: (context) => const CreateRoomScreen(),
        GamePage.routeName: (context) => GamePage(),
      },
      initialRoute: MainMenuScreen.routeName,
    );
  }
}
