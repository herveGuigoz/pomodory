import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../_internal/icons/pomodoro_icons.dart';
import '../../../_internal/styles.dart';
import '../../../components/buttons/animated_button.dart';
import '../../../components/styled_container.dart';
import '../../../components/styled_text.dart';
import '../../../core/theme/themes_.dart';
import '../../../modules/activity/views/report_view.dart';
import '../../../modules/refs.dart';
import '../../../modules/tasks/views/task_modal.dart';
import '../../settings/views/settings.dart';
import 'components/linear_painter.dart';

part 'components/header.dart';
part 'components/headline.dart';
part 'components/tasks_header.dart';
part 'components/tasks_list.dart';
part 'components/timer.dart';

class MainView extends HookWidget {
  const MainView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = useProvider(colorFromCurrentRoundProvider);

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
