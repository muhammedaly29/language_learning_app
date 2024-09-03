import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/item_model.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemModel> colors = const [
    ItemModel('sounds/colors/white.wav', 'assets/images/colors/color_white.png',
        'Shiro', 'White'),
    ItemModel('sounds/colors/black.wav', 'assets/images/colors/color_black.png',
        'Kuro', 'Black'),
    ItemModel('sounds/colors/gray.wav', 'assets/images/colors/color_gray.png',
        'Gure', 'Gray'),
    ItemModel('sounds/colors/red.wav', 'assets/images/colors/color_red.png',
        'Aka', 'Red'),
    ItemModel('sounds/colors/green.wav', 'assets/images/colors/color_green.png',
        'Midori', 'Green'),
    ItemModel('sounds/colors/brown.wav', 'assets/images/colors/color_brown.png',
        'Chairo', 'Brown'),
    ItemModel('sounds/colors/yellow.wav', 'assets/images/colors/yellow.png',
        'Ki-iro', 'Yellow'),
    ItemModel(
        'sounds/colors/dusty_yellow.wav',
        'assets/images/colors/color_dusty_yellow.png',
        'Hokori ki-iro',
        'Dusty Yellow'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor: const Color(0xFF49332A),
          title: const Text(
            'Colors',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: colors.length,
            itemBuilder: (context, index) {
              return Item(color: const Color(0xff6F428F), item: colors[index]);
            }));
  }
}
