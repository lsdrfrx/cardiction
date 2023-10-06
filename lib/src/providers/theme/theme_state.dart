part of 'theme_bloc.dart';

@immutable
class ThemeState {
  final ThemeData theme;
  const ThemeState({
    required this.theme,
  });
}

class ThemeInitial extends ThemeState {
  const ThemeInitial({
    required ThemeData theme,
  }) : super(theme: theme);
}
