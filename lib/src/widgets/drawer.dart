import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/pages/new_card.dart";

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          ListTile(
            title: const Text("New Card"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NewCardPage()));
            },
          ),
          ListTile(
            title: Text("Learn cards"),
          ),
          ListTile(
            title: Text("Vocabulary"),
          ),
          ListTile(
            title: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
