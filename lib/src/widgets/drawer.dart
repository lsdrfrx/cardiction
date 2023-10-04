import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/pages/cards.dart";
import "package:flutter_desktop_test/src/pages/new_card.dart";
import "package:flutter_desktop_test/src/pages/settings.dart";
import "package:flutter_desktop_test/src/pages/vocabulary.dart";

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: const Text("New card"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewCardPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Learn cards"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardsPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Vocabulary"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VocabularyPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Settings"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
