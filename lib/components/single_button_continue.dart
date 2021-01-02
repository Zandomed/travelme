import 'package:flutter/material.dart';

class SingleButtonContinue extends StatelessWidget {
  final dynamic Function() onPress;
  final bool isLoading;

  SingleButtonContinue({Key key, this.onPress, this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
        tag: 'button',
        child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onPress,
            child: Container(
              height: 50.0,
              width: 50.0,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
              child: Center(
                  child: isLoading
                      ? Container(
                          width: 30.0,
                          height: 30.0,
                          child: CircularProgressIndicator(
                            backgroundColor: Colors.white,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.orange),
                            strokeWidth: 5.0,
                          ),
                        )
                      : Icon(
                          Icons.arrow_right,
                          size: 40.0,
                          color: Colors.white,
                        )),
            ),
          ),
        ));
  }
}
