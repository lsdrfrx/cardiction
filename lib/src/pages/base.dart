import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/widgets/appbar.dart";
import "package:flutter_desktop_test/src/widgets/drawer.dart";

class BasePage extends StatelessWidget {
  final Widget body;
  final String title;
  const BasePage({super.key, required this.body, this.title = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
      ),
      drawer: const CustomDrawer(),
      body: body,
    );
  }
}
