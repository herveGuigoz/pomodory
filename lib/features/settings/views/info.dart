part of 'settings.dart';

class _Info extends HookWidget {
  const _Info({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
