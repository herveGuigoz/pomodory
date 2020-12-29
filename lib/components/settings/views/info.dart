import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:pomodoro/core/size_config.dart';

import '../../../core/app_info.dart';

class Info extends HookWidget {
  const Info({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizes = SizeConfig.of(context);
    final infos = useProvider(appInfo);
    return Column(
      children: [
        const SizedBox(height: 16),
        SizedBox(
          height: sizes.getProportionateScreenHeight(200),
          width: sizes.getProportionateScreenWidth(200),
          child: Opacity(
            opacity: 0.9,
            child: Image.asset(
              'assets/images/pomodoro_logo.png',
              // fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Center(
          child: infos.when(
            data: (value) => _Text('Version: ${value.version}'),
            loading: () => const _Text('Loading information'),
            error: (_, __) => const _Text('Something went wrong'),
          ),
        )
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text(
    this.data, {
    Key key,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        fontSize: 14,
        letterSpacing: 0.05,
      ),
    );
  }
}
