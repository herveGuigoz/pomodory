import 'package:flutter/material.dart';

import '_internal/error_handler.dart';
import 'pomodoro.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  ErrorHandler(child: SplashScreen());
}
