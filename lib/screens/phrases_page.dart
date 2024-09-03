import 'package:flutter/material.dart';
import 'package:language_learning_app/components/phrase_item.dart';
import 'package:language_learning_app/models/item_model.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
  final List<ItemModel> phrases = const [
    ItemModel('sounds/phrases/dont_forget_to_subscribe.wav','', 
         'Kōdoku suru koto o wasurenaide kudasai',
          "Don't forget to subscribe" ),
    ItemModel(
        'sounds/phrases/i_love_programming.wav','', 
        'Watashi wa puroguramingu ga daisukidesu',
        'I love programming'),
    ItemModel(
        'sounds/phrases/programming_is_easy.wav','', 
        'Puroguramingu wa kantandesu',
        'programming is easy'),
    ItemModel(
        'sounds/phrases/where_are_you_going.wav','', 
        'Doko ni iku no ?',
        ' Where are you going ?'),
    ItemModel(
        'sounds/phrases/what_is_your_name.wav','', 
        'Namae wa nandesu ka ?',
        'What is your name?'),
    ItemModel(
        'sounds/phrases/i_love_anime.wav','', 
        'Watashi wa anime ga daisukidesu',
        'I love anime'),
    ItemModel(
        'sounds/phrases/how_are_you_feeling.wav','', 
        'Go kibun wa ikagadesu ka ?',
        'How are you feeling ?'),
    ItemModel(
        'sounds/phrases/are_you_coming.wav','', 
        'Kimasu ka ? ',
        ' Are you coming ?'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          backgroundColor:const Color(0xFF49332A),
          title: const Text(
            'Phrases',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: phrases.length,
            itemBuilder: (context, index) {
              return PhrasesItem (
                color: const Color(0xff50ADD2),
                 item: phrases[index]);
            }));
  }
}
