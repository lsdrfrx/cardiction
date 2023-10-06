part of 'accentcolor_bloc.dart';

@immutable
sealed class AccentColorEvent {
  final String color;
  const AccentColorEvent({required this.color});
}

class AccentColorChangedEvent extends AccentColorEvent {
  const AccentColorChangedEvent(String color) : super(color: color);
}
