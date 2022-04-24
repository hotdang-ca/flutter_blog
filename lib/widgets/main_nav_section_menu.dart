import 'package:blog/config/strings.dart';
import 'package:blog/widgets/main_nav_section_menu_item.dart';
import 'package:flutter/material.dart';

class MainNavigationSectionMenu extends StatelessWidget {
  MainNavigationSectionMenu({Key? key}) : super(key: key);

  /// Common nav item padding
  final _navItemPadding =
      const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0);

  /// Sections to list on the side navbar
  final List<String> _sections = [
    Strings.navigationHomeLabel,
    Strings.navigationBlogLabel,
    Strings.navigationProjectsLabel,
    Strings.navigationAboutLabel,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _sections.map((String label) {
          // TODO: can this be an arrow function of some sort?
          return Padding(
              padding: _navItemPadding,
              child: MainNavigationSectionMenuItem(label));
        }).toList(),
      ),
    );
  }
}
