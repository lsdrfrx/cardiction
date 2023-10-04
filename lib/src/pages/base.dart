import "package:flutter/material.dart";
import "package:flutter_desktop_test/src/widgets/appbar.dart";
import "package:flutter_desktop_test/src/widgets/drawer.dart";

class BasePage extends StatelessWidget {
  final Widget body;
  const BasePage({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: body,
    );
  }
}
