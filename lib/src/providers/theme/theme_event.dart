part of 'theme_bloc.dart';

@immutable
sealed class ThemeEvent {}

class ThemeLightEvent extends ThemeEvent {}

class ThemeDarkEvent extends ThemeEvent {}
