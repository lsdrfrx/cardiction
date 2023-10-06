import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_desktop_test/src/providers/accentcolor/accentcolor_bloc.dart";
import "package:flutter_desktop_test/src/services/themes.dart";

class AccentColorSwitcher extends StatefulWidget {
  const AccentColorSwitcher({Key? key}) : super(key: key);

  @override
  _AccentColorSwitcherState createState() => _AccentColorSwitcherState();
}

class _AccentColorSwitcherState extends State<AccentColorSwitcher> {
  String dropdownValue = AccentColors.colors()[0];
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      initialSelection: AccentColors.colors()[0],
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
          BlocProvider.of<AccentColorBloc>(context)
              .add(AccentColorChangedEvent(dropdownValue));
        });
      },
      dropdownMenuEntries: AccentColors.colors().map<DropdownMenuEntry<String>>(
        (value) {
          return DropdownMenuEntry(value: value, label: value);
        },
      ).toList(),
    );
  }
}
