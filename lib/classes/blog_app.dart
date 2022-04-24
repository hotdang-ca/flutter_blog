import 'package:blog/config/strings.dart';
import 'package:blog/widgets/header.dart';
import 'package:blog/widgets/main_nav.dart';
import 'package:flutter/material.dart';

class BlogApp extends StatelessWidget {
  const BlogApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          BlogHeader(
            headerText: Strings.headerSubtitleLabel,
            subheaderText: Strings.headerTitleLabel,
          ),
          Row(
            children: const [
              MainNavigation(),
            ],
          ),
        ],
      ),
    );
  }
}
