import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = '/welcome';

  WelcomePage({Key key}) : super(key: key);

  Widget _backgroundImage() {
    return Container(
      child: Image(
        image: AssetImage('assets/images/background-welcome.jpg'),
        fit: BoxFit.cover,
        height: double.infinity,
      ),
    );
  }

  Widget _content() {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _logoZandome(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [_textWelcome(), _buttonContinue()],
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
    return Image(
      height: 40.0,
      image: AssetImage('assets/images/zandome-logo.png'),
    );
  }

  Widget _buttonContinue() {
    return GestureDetector(
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.black.withOpacity(0.5)),
        child: Center(
            child: Icon(
          Icons.arrow_right,
          size: 40.0,
          color: Colors.white,
        )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
          body: Stack(
        children: [_backgroundImage(), _content()],
      )),
    );
  }
}
