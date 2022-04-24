import 'package:blog/config/strings.dart';
import 'package:flutter/material.dart';

import 'main_nav_section_menu.dart';
import 'main_nav_call_to_action.dart';
import 'main_nav_logo.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const MainNavigationLogo(),
          MainNavigationSectionMenu(),
          MainNavigationCallToAction(
            callToActionLabel: Strings.callToActionLabel,
            callToActionHandler: () {
              // TODO: do a thing!
            },
          ),
        ],
      ),
    );
  }
}
