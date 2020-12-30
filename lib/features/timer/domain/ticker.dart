import 'dart:async';

/// Expose a stream of ticks which we can subscribe and react to.
class Ticker {
  Stream<int> tick({int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}