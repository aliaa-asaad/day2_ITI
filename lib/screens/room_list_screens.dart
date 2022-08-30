import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:day2/widgets/custome_container.dart';
import 'package:day2/data.dart';

class RoomList extends StatefulWidget {
  @override
  State<RoomList> createState() => _RoomListState();
}

class _RoomListState extends State<RoomList> {
  List? index = [1, 2, 3, 4, 5, 6, 7, 8];
  int? increament = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Rooms List'),
          leading: Icon(Icons.arrow_back),
          backgroundColor: Colors.orange,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomeContainer(
                  increament: increament,
                  index: index,
                  room: rooms,
                  i: 0,
                ),
                CustomeContainer(
                  increament: increament,
                  index: index,
                  room: rooms,
                  i: 1,
                ),
                CustomeContainer(
                  increament: increament,
                  index: index,
                  room: rooms,
                  i: 2,
                ),
                SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      increament = increament! + 1;
                    });
                  },
                  child: Text('Next'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                )
              ],
            ),
          ),
        ));
  }
}
