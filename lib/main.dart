import 'package:flutter/material.dart';
import 'package:pomodory/_internal/error_handler.dart';
import 'package:pomodory/pomodoro.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorHandler(child: const SplashScreen());
}
