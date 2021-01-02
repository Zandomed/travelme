import 'package:flutter/material.dart';
import 'package:travelme/bloc/storage_bloc.dart';
import 'package:travelme/router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StorageBloc(
      child: MaterialApp(
        title: 'TravelMe',
        debugShowCheckedModeBanner: false,
        initialRoute: MainRouter.getInitialRoute(),
        onGenerateRoute: MainRouter.getOnGenerateRoute(),
        theme: ThemeData(
            primaryColor: Colors.orange, accentColor: Colors.orangeAccent[900]),
      ),
    );
  }
}
