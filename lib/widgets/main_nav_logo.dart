import 'package:flutter/material.dart';

class MainNavigationLogo extends StatelessWidget {
  const MainNavigationLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 45.0,
        backgroundColor:
            const Color(0xffFDCF09), // TODO: replace with my primary color
        child: CircleAvatar(
          radius: 40.0,
          backgroundColor: Colors.white,
          child: Image.asset('images/logo.png'),
        ),
      ),
    );
  }
}
