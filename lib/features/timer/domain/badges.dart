import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class BadgesBuilder {
  static Future<File> buildFromAssets(String path) async {
    final bytes = await rootBundle.load(path);
    final dir = await _getDirPath();
    final file = await _writeToFile(bytes, '$dir/icon.png');

    return file;
  }

  // write to app path
  static Future<File> _writeToFile(ByteData data, String path) {
    final buffer = data.buffer;
    return File(path).writeAsBytes(
      buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    );
  }

  static Future<String> _getDirPath() async =>
      (await getApplicationDocumentsDirectory()).path;
}
