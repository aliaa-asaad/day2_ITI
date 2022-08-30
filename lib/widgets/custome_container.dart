import 'package:flutter/material.dart';

class CustomeContainer extends StatelessWidget {
  final int? increament;
  final List? index;
  final List? room;
  final int? i;

  const CustomeContainer({this.room, this.increament, this.index, this.i});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 2,
              color: Colors.grey,
            )
          ],
          border: Border.all(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(5)),
      child: ListTile(
        subtitle: Text(
          '${room![index![i! + increament!]]['description']}',
        ),
        leading: Image.asset(
          '${room![index![i! + increament!]]['image']}',
          height: 150,
          width: 100,
          fit: BoxFit.fill,
        ),
        trailing: Icon(Icons.keyboard_arrow_up),
        title: Text(
          '${room![index![i! + increament!]]['type']}',
          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
