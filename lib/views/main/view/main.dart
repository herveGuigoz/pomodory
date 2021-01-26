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
import '../../settings/views/settings.dart';
import '../bloc/provider.dart';
import 'components/linear_painter.dart';
import 'task_modal/task_modal.dart';

part 'components/header.dart';
part 'components/task.dart';

part 'components/tasks_header.dart';
part 'components/timer.dart';

class Timer extends HookWidget {
  const Timer({
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
                padding: EdgeInsets.fromLTRB(16, 8, 16, 24),
                sliver: SliverToBoxAdapter(child: _Headline()),
              ),
              _TasksHeader(),
              SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                sliver: _Tasks(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Headline extends HookWidget {
  const _Headline({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final headline = useProvider(headlineProvider);

    return Text(
      headline,
      style: TextStyles.h1,
      textAlign: TextAlign.center,
    );
  }
}
