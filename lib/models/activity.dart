import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

const kDefaultProject = 'No Project';

class Activity extends Equatable {
  Activity({
    @required this.date,
    this.project = kDefaultProject,
    this.duration = 0,
  })  : assert(date.hour == 0),
        assert(date.second == 0),
        assert(date.millisecond == 0);

  factory Activity.fromJson(Map<String, dynamic> map) {
    return Activity(
      date: DateTime.fromMillisecondsSinceEpoch(map['date'] as int),
      project: map['project'] as String,
      duration: map['duration'] as int,
    );
  }

  final DateTime date;
  final String project;
  // focused time in seconds
  final int duration;

  Activity durationIncrementedByOneSecond() =>
      copyWith(duration: duration ?? 0 + 1);

  int calculateDifferenceInDays() {
    final now = DateTime.now();
    return DateTime(date.year, date.month, date.day)
        .difference(DateTime(now.year, now.month, now.day))
        .inDays;
  }

  Activity copyWith({
    DateTime date,
    String project,
    int duration,
  }) {
    return Activity(
      date: date ?? this.date,
      project: project ?? this.project,
      duration: duration ?? this.duration,
    );
  }

  Map<String, Object> toJson() {
    return {
      'date': date?.millisecondsSinceEpoch,
      'project': project,
      'duration': duration,
    };
  }

  @override
  String toString() =>
      'Activity(date: $date, project: $project, duration: $duration)';

  @override
  List<Object> get props => [date, project];
}
