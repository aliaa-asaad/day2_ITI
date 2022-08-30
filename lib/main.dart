import 'package:day2/screens/home_screen.dart';
import 'package:day2/screens/rooms_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:day2/screens/room_list_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     // home: RoomList(),
      routes: {'/':(context)=>HomeScreen(),
      'roomDetails':(context)=>RoomDetails()},
    );
  }
}

