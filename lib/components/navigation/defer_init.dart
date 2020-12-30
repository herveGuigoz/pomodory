import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show RendererBinding;

typedef DeferInitCreate<T extends Widget> = Future<T> Function();

@immutable
class DeferInit<T extends Widget> extends StatefulWidget {
  const DeferInit({
    Key key,
    @required this.create,
    this.emptyWidget = const SizedBox.shrink(),
  }) : super(key: key);

  final DeferInitCreate<T> create;
  final Widget emptyWidget;

  @override
  _DeferInitState<T> createState() => _DeferInitState<T>();
}

class _DeferInitState<T extends Widget> extends State<DeferInit<T>> {
  Future<T> _future;

  @override
  void initState() {
    super.initState();
    RendererBinding.instance.deferFirstFrame();
    _future = widget.create().whenComplete(() {
      RendererBinding.instance.allowFirstFrame();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _future,
      // ignore: avoid_types_on_closure_parameters
      builder: (context, AsyncSnapshot<T> snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const SizedBox.shrink();
        } else if (snapshot.hasError) {
          return ErrorWidget(snapshot.error);
        } else {
          final data = snapshot.data;
          return data ?? widget.emptyWidget;
        }
      },
    );
  }
}
