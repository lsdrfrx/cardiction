import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_desktop_test/src/services/themes.dart';

part 'accentcolor_event.dart';
part 'accentcolor_state.dart';

class AccentColorBloc extends Bloc<AccentColorEvent, AccentColorState> {
  AccentColorBloc()
      : super(AccentColorInitial(accentColor: AccentColors.green)) {
    on<AccentColorChangedEvent>(_onColorChange);
  }

  _onColorChange(AccentColorEvent event, Emitter<AccentColorState> emit) {
    emit(AccentColorState(accentColor: AccentColors.byName(event.color)));
    print("Current color: ${event.color}");
  }
}
