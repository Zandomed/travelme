import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome';

  WelcomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
      ),
    );
  }
}
