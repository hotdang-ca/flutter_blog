import 'package:blog/widgets/header.dart';
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
          const Center(
            child: Text('Hello'),
          ),
        ],
      ),
    );
  }
}
