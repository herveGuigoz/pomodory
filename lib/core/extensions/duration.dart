extension DurationToTimeExt on Duration {
  String get time => inHours != 0
      ? '$inHours:${inMinutes % 60}:${(inSeconds % 60).toString().padLeft(2, '0')}'
      : '${inMinutes % 60}:${(inSeconds % 60).toString().padLeft(2, '0')}';
}
