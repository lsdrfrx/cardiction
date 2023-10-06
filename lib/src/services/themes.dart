import "package:flutter/material.dart";

final lightTheme = ThemeData();

final darkTheme = lightTheme.copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: const Color.fromRGBO(33, 33, 33, 1),
  appBarTheme: const AppBarTheme(
    foregroundColor: Color.fromRGBO(33, 33, 33, 1),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Color.fromRGBO(33, 33, 33, 1),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white70,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white70,
  ),
);

class AccentColors {
  static Color green = const Color.fromARGB(255, 129, 204, 43);
  static Color blue = const Color.fromRGBO(64, 196, 255, 1);
  static Color orange = const Color.fromRGBO(255, 171, 64, 1);
  static Color red = const Color.fromRGBO(229, 57, 53, 1);
  static Color pink = const Color.fromRGBO(255, 128, 171, 1);

  static List<String> colors() {
    return ["green", "blue", "orange", "red", "pink"];
  }

  static Color byName(String name) {
    switch (name) {
      case "green":
        return AccentColors.green;
      case "blue":
        return AccentColors.blue;
      case "orange":
        return AccentColors.orange;
      case "red":
        return AccentColors.red;
      case "pink":
        return AccentColors.pink;
    }
    return AccentColors.green;
  }
}
