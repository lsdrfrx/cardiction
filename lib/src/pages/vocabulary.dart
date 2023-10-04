import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/widgets/appbar.dart";
import "package:flutter_desktop_test/src/widgets/drawer.dart";

class Vocabulary extends StatelessWidget {
  const Vocabulary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      drawer: CustomDrawer(),
      body: Container(),
    );
  }
}
