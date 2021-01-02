import 'package:flutter/material.dart';

class StorageBloc extends InheritedWidget {
  static StorageBloc _instances;

  factory StorageBloc({Key key, Widget child}) {
    if (StorageBloc._instances == null) {
      StorageBloc._instances = StorageBloc._internal(
        child: child,
        key: key,
      );
    }
    return StorageBloc._instances;
  }

  StorageBloc._internal({Key key, Widget child})
      : super(key: key, child: child);

  static StorageBloc of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StorageBloc>();
  }

  @override
  bool updateShouldNotify(StorageBloc oldWidget) {
    return true;
  }
}
