import 'package:flutter/material.dart';
import 'package:flutter_application_1/Model/Products.dart';

class ItemsWidgets extends StatelessWidget {
  final Item item;

  const ItemsWidgets({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.imageurl),
        subtitle: Text(item.desc),
        title: Text(
          item.name,
          textScaleFactor: 0.9,
          style: TextStyle(color: Color.fromARGB(210, 0, 0, 0)),
        ),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Color.fromARGB(210, 0, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
