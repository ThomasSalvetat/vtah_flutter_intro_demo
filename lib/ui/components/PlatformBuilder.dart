import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show TargetPlatform;
import 'package:flutter/material.dart';

typedef PlatformBuilderCallback = Function(BuildContext, bool);

class PlatformBuilder extends StatelessWidget {
  const PlatformBuilder({Key key, @required this.builder}) : super(key: key);
  final PlatformBuilderCallback builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, _isCupertino(context));
  }

  bool _isCupertino(BuildContext context) =>
      Theme.of(context).platform == TargetPlatform.iOS;
}
