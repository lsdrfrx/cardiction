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
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.rectangle,
            ),
            child: const Text("Header"),
          ),
          ListTile(
            title: const Text("New card"),
            leading: const Icon(Icons.create),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewCardPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Learn cards"),
            leading: const Icon(Icons.view_carousel_rounded),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CardsPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Vocabulary"),
            leading: const Icon(Icons.book),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const VocabularyPage()),
              );
            },
          ),
          ListTile(
            title: const Text("Settings"),
            leading: const Icon(Icons.settings),
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
