import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? type;
  final String? description;
  final String? image;

  CategoryItem(
      {@required this.type, @required this.description, @required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('roomDetails',
            arguments: {'image': image, 'type': type,'description':description});
      },
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(image!),
        ),
        title: Text(type!),
      ),
    );
  }
}
