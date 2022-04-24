// ignore_for_file: prefer_const_constructors

import 'package:blog/config/sizes.dart';
import 'package:flutter/material.dart';

class BlogHeader extends StatelessWidget {
  late final String _headerText;
  late final String _subheaderText;

  BlogHeader(
      {Key? key, required String headerText, required String subheaderText})
      : super(key: key) {
    _headerText = headerText;
    _subheaderText = subheaderText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: Sizes.headerBorderWidth),
        ),
      ),
      child: Container(
        margin: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              _headerText,
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              _subheaderText,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ),
    );
  }
}
