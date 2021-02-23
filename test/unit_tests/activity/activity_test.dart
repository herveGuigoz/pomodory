// import 'package:flutter_test/flutter_test.dart';
// import 'package:pomodory/models/activity.dart';
// import 'package:pomodory/_internal/extensions/time_extensions.dart';
// import 'package:pomodory/models/project.dart';
// import 'package:pomodory/modules/activity/logic/activity_manager.dart';

// void main() {
//   test(
//     'same date and same project but different duration should be equal',
//     () {
//       final activityOne = Activity(
//         date: DateTime.now().date,
//         duration: 1,
//       );

//       final activityTwo = Activity(
//         date: DateTime.now().date,
//         duration: 99,
//       );

//       assert(activityOne == activityTwo, true);
//     },
//   );

//   test(
//     'same date and different project should not be equal',
//     () {
//       final activityOne = Activity(
//         date: DateTime.now().date,
//         project: const Project(name: 'test'),
//         duration: 1,
//       );

//       final activityTwo = Activity(
//         date: DateTime.now().date,
//         duration: 99,
//       );

//       assert(activityOne != activityTwo, true);
//     },
//   );

//   test(
//     'update with same date and project should replace value',
//     () {
//       final activity = Activity(
//         date: DateTime.now().date,
//         duration: 10,
//       );

//       final newValue = Activity(
//         date: DateTime.now().date,
//         duration: 99,
//       );

//       final result = [activity].update(newValue);

//       assert(result.length == 1);
//       assert(result.first == newValue);
//     },
//   );

//   test(
//     'update with same date and new project should add value',
//     () {
//       final activity = Activity(
//         date: DateTime.now().date,
//         duration: 10,
//       );

//       final newValue = Activity(
//         date: DateTime.now().date,
//         project: const Project(name: 'second'),
//         duration: 99,
//       );

//       final result = [activity].update(newValue);

//       assert(result.length == 2);
//       assert(result[0] == activity);
//       assert(result[1] == newValue);
//     },
//   );
// }
