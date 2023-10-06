part of 'accentcolor_bloc.dart';

@immutable
class AccentColorState {
  final Color accentColor;
  const AccentColorState({
    required this.accentColor,
  });
}

class AccentColorInitial extends AccentColorState {
  const AccentColorInitial({
    required Color accentColor,
  }) : super(accentColor: accentColor);
}
