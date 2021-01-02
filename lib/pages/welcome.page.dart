import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelme/components/single_button_continue.dart';
import 'package:travelme/pages/first_sign_in.page.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome';

  WelcomePage({Key key}) : super(key: key);

  void _goToViewSignIn(BuildContext context) {
    Navigator.of(context).pushNamed(FirstSignInPage.routeName);
  }

  Widget _backgroundImage() {
    return Container(
      child: Image(
        image: AssetImage('assets/images/background-welcome.jpg'),
        fit: BoxFit.cover,
        height: double.infinity,
      ),
    );
  }

  Widget _content(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: Platform.isAndroid
            ? EdgeInsets.all(40.0)
            : EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _logoZandome(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [_textWelcome(), _buttonContinue(context)],
            )
          ],
        ),
      ),
    );
  }

  Widget _textWelcome() {
    return Text(
      'Take your \nbackpack \nand \ndiscover \nthe nature',
      style: TextStyle(
          // color: Color(0xFF646464),
          color: Colors.white,
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          height: 1.3),
    );
  }

  Widget _logoZandome() {
    return Hero(
      tag: 'logo',
      child: Image(
        height: 40.0,
        image: AssetImage('assets/images/zandome-logo.png'),
      ),
    );
  }

  Widget _buttonContinue(BuildContext context) {
    return SingleButtonContinue(
      onPress: () => _goToViewSignIn(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          body: Stack(
        children: [_backgroundImage(), _content(context)],
      )),
    );
  }
}
