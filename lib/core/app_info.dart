import 'package:hooks_riverpod/all.dart';
import 'package:package_info/package_info.dart';

final appInfo = FutureProvider((ref) async {
  final packageInfo = await PackageInfo.fromPlatform();
  return packageInfo;
});
