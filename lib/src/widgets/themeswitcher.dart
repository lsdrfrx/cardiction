import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_desktop_test/src/providers/theme/theme_bloc.dart";

class ThemeSwitcher extends StatefulWidget {
  const ThemeSwitcher({Key? key}) : super(key: key);

  @override
  _ThemeSwitcherState createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: darkMode,
      activeColor: Theme.of(context).primaryColor,
      onChanged: (value) {
        setState(() => darkMode = value);
        ThemeEvent event = darkMode ? ThemeDarkEvent() : ThemeLightEvent();
        BlocProvider.of<ThemeBloc>(context).add(event);
      },
    );
  }
}
