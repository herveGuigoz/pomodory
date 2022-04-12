import 'dart:async';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class ErrorHandler {
  ErrorHandler({
    required Widget child,
  }) {
    if (kReleaseMode) {
      // override the error widget in release mode (the red error screen)
      ErrorWidget.builder = (details) => const SizedBox();
    }

    FlutterError.onError = _handleFlutterError;

    runZonedGuarded<Future<void>>(
      () async {
        runApp(ProviderScope(child: child));
      },
      _handleError,
    );
  }

  static final Logger _log = Logger();

  /// Handles errors caught by the Flutter framework.
  ///
  /// Forwards the error to the [_handleError] handler when in release mode.
  /// Prints it to the console otherwise.
  Future<void> _handleFlutterError(FlutterErrorDetails details) async {
    if (kReleaseMode) {
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  }

  /// Prints the [error] and  send the error report.
  Future<void> _handleError(Object error, StackTrace stackTrace) async {
    if (error is SocketException) {
      // no internet connection, can be ignored
      _log.w('ignoring error $error');
      return;
    }

    _log.e('caught error', error, stackTrace);

    // report the error in release mode
    if (kReleaseMode) {
      // todo eport error to sentry.
    } else {
      _log.i('not reporting error in debug / profile mode');
    }
  }
}
