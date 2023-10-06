import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_test/src/services/themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial(theme: lightTheme)) {
    on<ThemeLightEvent>(_onLightEvent);
    on<ThemeDarkEvent>(_onDarkEvent);
  }

  _onLightEvent(ThemeEvent event, Emitter<ThemeState> emit) {
    emit(ThemeState(theme: lightTheme));
  }

  _onDarkEvent(ThemeEvent event, Emitter<ThemeState> emit) {
    emit(ThemeState(theme: darkTheme));
  }
}
