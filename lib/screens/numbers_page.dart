import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/item_model.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<ItemModel> numbers = const [
    ItemModel('sounds/numbers/number_one_sound.mp3',
        'assets/images/numbers/number_one.png', 'ichi', 'One'),
    ItemModel('sounds/numbers/number_two_sound.mp3',
        'assets/images/numbers/number_two.png', 'Ni', 'Two'),
    ItemModel('sounds/numbers/number_three_sound.mp3',
        'assets/images/numbers/number_three.png', 'San', 'Three'),
    ItemModel('sounds/numbers/number_four_sound.mp3',
        'assets/images/numbers/number_four.png', 'Shi', 'Four'),
    ItemModel('sounds/numbers/number_five_sound.mp3',
        'assets/images/numbers/number_five.png', 'Go', 'Five'),
    ItemModel('sounds/numbers/number_six_sound.mp3',
        'assets/images/numbers/number_six.png', 'Roku', 'Six'),
    ItemModel('sounds/numbers/number_seven_sound.mp3',
        'assets/images/numbers/number_seven.png', 'Sebun', 'Seven'),
    ItemModel('sounds/numbers/number_eight_sound.mp3',
        'assets/images/numbers/number_eight.png', 'Hachi', 'Eight'),
    ItemModel('sounds/numbers/number_nine_sound.mp3',
        'assets/images/numbers/number_nine.png', 'Kyū', 'Nine'),
    ItemModel('sounds/numbers/number_ten_sound.mp3',
        'assets/images/numbers/number_ten.png', 'Jū', 'Ten'),
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
            'Numbers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return Item(color: const Color(0xffF79531), item:numbers[index]);
            }));
  }
}
