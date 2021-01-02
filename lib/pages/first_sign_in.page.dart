import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travelme/components/single_button_continue.dart';

class FirstSignInPage extends StatelessWidget {
  static const String routeName = '/signIn';
  final EdgeInsets _paddingInputs = EdgeInsets.only(
    left: 70,
  );

  final TextStyle _inputStyle = TextStyle(
      color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold);

  FirstSignInPage({Key key}) : super(key: key);

  Widget _textLogin() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        //color: Colors.green,
        height: 200,
        width: 200,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Center(
              child: Text(
                'A world of possibility in an app',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _verticalText() {
    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 10.0),
      child: RotatedBox(
          quarterTurns: -1,
          child: Text(
            'Sing in',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w900,
            ),
          )),
    );
  }

  Widget _nameInput(BuildContext context) {
    return Padding(
      padding: _paddingInputs,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: TextField(
            keyboardType: TextInputType.name,
            autocorrect: true,
            style: _inputStyle,
            decoration: _getInputDecoration('Name'),
          ),
        ),
      ),
    );
  }

  Widget _emailInput(BuildContext context) {
    return Padding(
      padding: _paddingInputs,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              style: _inputStyle,
              decoration: _getInputDecoration('Email')),
        ),
      ),
    );
  }

  Widget _buttonLogin(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(),
        ),
        SingleButtonContinue(
          onPress: () {},
        )
      ],
    );
  }

  Widget _logoZandome() {
    return Positioned(
      right: 40.0,
      top: 60.0,
      child: Hero(
        tag: 'logo',
        child: Image(
          height: 40.0,
          image: AssetImage('assets/images/zandome-logo.png'),
        ),
      ),
    );
  }

  InputDecoration _getInputDecoration(String name) {
    return InputDecoration(
      border: InputBorder.none,
      filled: true,
      fillColor: Colors.black.withOpacity(0.3),
      labelText: name,
      labelStyle: TextStyle(
          color: Colors.white70, fontWeight: FontWeight.normal, fontSize: 16.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          body: Stack(children: [
        Container(
          padding: EdgeInsets.only(right: 70.0, top: 60.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.orange[900], Colors.orange]),
          ),
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    _verticalText(),
                    _textLogin(),
                  ]),
                  SizedBox(
                    height: 50.0,
                  ),
                  _nameInput(context),
                  SizedBox(
                    height: 20.0,
                  ),
                  _emailInput(context),
                  SizedBox(
                    height: 20.0,
                  ),
                  _buttonLogin(context),
                  // FirstTime(),
                ],
              ),
            ],
          ),
        ),
        _logoZandome(),
      ])),
    );
  }
}
