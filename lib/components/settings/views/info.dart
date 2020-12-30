import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import '../../../core/app_info.dart';

class Info extends HookWidget {
  const Info({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final sizes = SizeConfig.of(context);
    final infos = useProvider(appInfo);
    return infos.when(
      data: (value) => ListTileTheme(
        textColor: Theme.of(context).colorScheme.secondaryVariant,
        dense: true,
        child: ListView(
          primary: false,
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(title: Text('Version: ${value.version}')),
            const ListTile(title: Text('Licence: MIT')),
            const ListTile(title: Text('Author: herveGuigoz')),
            const SizedBox(),
          ]).toList(),
        ),
      ),
      loading: () => const Text('Loading information'),
      error: (_, __) => const Text('Something went wrong'),
    );
  }
}
