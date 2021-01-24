import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../_internal/icons/pomodoro_icons.dart';
import '../../../_internal/styles.dart';
import '../../../components/styled_container.dart';
import '../../../components/styled_text.dart';
import '../../../core/theme/themes_.dart';
import '../../settings/views/settings.dart';
import '../bloc/bloc.dart';
import 'components/animated_button.dart';
import 'components/linear_painter.dart';

part 'components/header.dart';
part 'components/tasks.dart';
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
        child: SafeArea(
          bottom: false,
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: _Header(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                child: LinearPainter(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                child: _TimerBloc(),
              ),
              _Headline(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: _Tasks(),
              )
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
    final headline = useProvider(currentRoundProvider).maybeWhen(
      work: () => 'Time to work!',
      orElse: () => 'Time for a break',
    );

    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      child: Text(headline, style: TextStyles.h1),
    );
  }
}
