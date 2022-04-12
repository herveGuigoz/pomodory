import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:pomodory/_internal/icons/pomodoro_icons.dart';
import 'package:pomodory/_internal/styles.dart';
import 'package:pomodory/components/animated_button.dart';
import 'package:pomodory/components/styled_container.dart';
import 'package:pomodory/components/styled_text.dart';
import 'package:pomodory/core/theme/themes_.dart';
import 'package:pomodory/modules/activity/views/report_view.dart';
import 'package:pomodory/modules/refs.dart';
import 'package:pomodory/modules/tasks/views/task_modal.dart';
import 'package:pomodory/views/main/view/components/linear_painter.dart';
import 'package:pomodory/views/settings/views/settings.dart';


part 'components/header.dart';
part 'components/headline.dart';
part 'components/tasks_header.dart';
part 'components/tasks_list.dart';
part 'components/timer.dart';

class MainView extends ConsumerWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final color = ref.watch(colorFromCurrentRoundProvider);

    return Material(
      child: StyledContainer(
        color: color,
        child: const SafeArea(
          bottom: false,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                sliver: SliverToBoxAdapter(child: _Header()),
              ),
              SliverPadding(
                padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                sliver: SliverToBoxAdapter(child: LinearPainter()),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                sliver: SliverToBoxAdapter(child: _TimerBloc()),
              ),
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 8),
                sliver: SliverToBoxAdapter(child: _Headline()),
              ),
              _TasksHeader(),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                sliver: _TasksList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
