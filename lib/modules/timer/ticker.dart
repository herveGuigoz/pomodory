part of 'timer_controller.dart';

/// Expose a stream of ticks which we can subscribe and react to.
class Ticker {
  Stream<int> tick({required int ticks}) {
    return Stream.periodic(
      const Duration(seconds: 1),
      (x) => ticks - x - 1,
    ).take(ticks);
  }
}
