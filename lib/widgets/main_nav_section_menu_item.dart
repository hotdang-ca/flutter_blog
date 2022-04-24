import 'package:flutter/material.dart';

class MainNavigationSectionMenuItem extends StatelessWidget {
  late final String _sectionLabel;

  MainNavigationSectionMenuItem(String sectionLabel, {Key? key})
      : super(key: key) {
    _sectionLabel = sectionLabel;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _sectionLabel,
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
