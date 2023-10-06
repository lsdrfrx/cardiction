import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_test/src/pages/vocabulary.dart';
import 'package:flutter_desktop_test/src/providers/accentcolor/accentcolor_bloc.dart';
import 'package:flutter_desktop_test/src/providers/theme/theme_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => AccentColorBloc(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final themeState = context.watch<ThemeBloc>().state;
          final accentColorState = context.watch<AccentColorBloc>().state;

          return _build(
            context,
            themeState.theme.copyWith(
              primaryColor: accentColorState.accentColor,
            ),
          );
        },
      ),
    );
  }

  Widget _build(BuildContext context, theme) {
    MaterialApp app = MaterialApp(
      home: const VocabularyPage(),
      theme: theme,
      
    );

    return app;
  }
}
