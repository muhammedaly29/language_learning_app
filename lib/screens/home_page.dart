import 'package:flutter/material.dart';
import 'package:language_learning_app/components/category_item.dart';
import 'package:language_learning_app/screens/colors_page.dart';
import 'package:language_learning_app/screens/family_members_page.dart';
import 'package:language_learning_app/screens/numbers_page.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFF4D9),
        appBar: AppBar(
            backgroundColor: const Color(0xFF49332A),
            title: const Text(
              'Toku',
              style: TextStyle(color: Colors.white),
            )),
        body: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const NumbersPage();
                    },
                  ),
                );
              },
              text: 'Numbers',
              color: const Color(0xffF79531),
            ),
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const FamilyMembersPage();
                    },
                  ),
                );
              },
              text: 'Family Members',
              color: const Color(0xff5D8B3E),
            ),
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const ColorsPage();
                    },
                  ),
                );
              },
              text: 'Colors',
              color: const Color(0xff6F428F),
            ),
            Category(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const PhrasesPage();
                    },
                  ),
                );
              },
              text: 'Phrases',
              color: const Color(0xff50ADD2),
            ),
          ],
        ));
  }
}
