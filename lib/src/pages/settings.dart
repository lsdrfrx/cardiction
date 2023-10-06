import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/pages/base.dart";
import "package:flutter_desktop_test/src/widgets/accentcolorswitcher.dart";
import "package:flutter_desktop_test/src/widgets/themeswitcher.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: "Settings",
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 4),
        child: ListView(
          children: const <Widget>[
            ListTile(
              title: Text("Theme"),
              trailing: ThemeSwitcher(),
            ),
            ListTile(
              title: Text("Accent color"),
              trailing: AccentColorSwitcher(),
            ),
          ],
        ),
      ),
    );
  }
}
