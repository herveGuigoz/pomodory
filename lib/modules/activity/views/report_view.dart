import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../refs.dart';

class ReportView extends HookWidget {
  static Route<T> route<T>() {
    return CupertinoPageRoute<T>(builder: (_) => ReportView());
  }

  static const textStyle = TextStyle(color: Color.fromRGBO(34, 34, 34, 1));

  @override
  Widget build(BuildContext context) {
    final activities = useProvider(activityManagerProvider.state);

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
