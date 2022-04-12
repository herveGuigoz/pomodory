import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pomodory/modules/refs.dart';

class ReportView extends ConsumerWidget {
  const ReportView({Key? key}) : super(key: key);

  static Route<T> route<T>() {
    return CupertinoPageRoute<T>(builder: (_) => const ReportView());
  }

  static const textStyle = TextStyle(color: Color.fromRGBO(34, 34, 34, 1));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activities = ref.watch(activityManagerProvider);

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: activities.length,
        itemBuilder: (context, index) => ListTile(
          leading: Text(
            activities[index].date.toString(),
            style: textStyle,
          ),
          title: Text(
            activities[index].project,
            style: textStyle,
          ),
          trailing: Text(
            '${activities[index].duration}',
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
