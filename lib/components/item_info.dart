import 'package:flutter/material.dart';
import 'package:language_learning_app/models/item_model.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              item.jpName,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            Text(
              item.enName,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ]),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(
            Icons.play_arrow,
            size: 32,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
