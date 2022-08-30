import 'package:day2/widgets/room_item.dart';
import 'package:flutter/material.dart';
class RoomDetails extends StatelessWidget {
  const RoomDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(backgroundColor: Colors.orange,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RoomItem(),
      ),);
  }
}
