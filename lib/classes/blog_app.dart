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
            headerText: 'James Robert Perih',
            subheaderText: 'Tetris, Management, and sometimes both',
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
