import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/calalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: GridTile(
        header: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          padding: const EdgeInsets.all(12),
          child: Text(
            item.name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        footer: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          padding: const EdgeInsets.all(12),
          child: Text(
            "₹${item.price.toString()}",
            style: const TextStyle(color: Colors.white),
          ),
        ),
        child: Image.network(item.image),
      ),
    );
  }
}
