import 'package:flutter/material.dart';
import 'package:language_learning_app/components/item.dart';
import 'package:language_learning_app/models/item_model.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItemModel> members = const [
    ItemModel(
        'sounds/family_members/father.wav',
        'assets/images/family_members/family_father.png',
        'Chichioya',
        'Father'),
    ItemModel('sounds/family_members/mother.wav',
        'assets/images/family_members/family_mother.png', 'Hahaoya', 'Mother'),
    ItemModel('sounds/family_members/son.wav',
        'assets/images/family_members/family_son.png', 'Musuko', 'Son'),
    ItemModel(
        'sounds/family_members/daughter.wav',
        'assets/images/family_members/family_daughter.png',
        'Musume',
        'Daughter'),
    ItemModel(
        'sounds/family_members/older bother.wav',
        'assets/images/family_members/family_older_brother.png',
        'Nisan',
        'Older Brother'),
    ItemModel(
        'sounds/family_members/older sister.wav',
        'assets/images/family_members/family_older_sister.png',
        'Ane',
        'Older Sister'),
    ItemModel(
        'sounds/family_members/younger brohter.wav',
        'assets/images/family_members/family_younger_brother.png',
        'Otooto',
        'Younger Brother'),
    ItemModel(
        'sounds/family_members/younger sister.wav',
        'assets/images/family_members/family_younger_sister.png',
        'Imooto',
        'Younger Sister'),
    ItemModel(
        'sounds/family_members/grand father.wav',
        'assets/images/family_members/family_grandfather.png',
        'Ojiisan',
        'Grand Father'),
    ItemModel(
        'sounds/family_members/grand mother.wav',
        'assets/images/family_members/family_grandmother.png',
        'Sobo',
        'Grand Mother'),
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
            'Family Mmebers',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: members.length,
            itemBuilder: (context, index) {
              return Item(color: const Color(0xff5D8B3E), item: members[index]);
            }));
  }
}
