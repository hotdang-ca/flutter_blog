import 'package:flutter/material.dart';

/// The call to action widget;
///
/// supplied with a handler, and a label
class MainNavigationCallToAction extends StatelessWidget {
  late final VoidCallback _callToActionHandler;
  late final String _callToActionLabel;

  MainNavigationCallToAction(
      {Key? key,
      required VoidCallback callToActionHandler,
      required String callToActionLabel})
      : super(key: key) {
    _callToActionLabel = callToActionLabel;
    _callToActionHandler = callToActionHandler;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(
          _callToActionLabel.toUpperCase(),
          style: Theme.of(context).textTheme.button!.copyWith(
              color: Theme.of(context).colorScheme.secondary, fontSize: 18.0),
        ),
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
          foregroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).colorScheme.secondary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: Theme.of(context).colorScheme.secondary),
            ),
          ),
        ),
        onPressed: _callToActionHandler);
  }
}
