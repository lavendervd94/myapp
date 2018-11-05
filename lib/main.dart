import 'package:flutter/material.dart';
import 'index.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/': (context) => LoginScreen(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/second': (context) => IndexScreen(),
    },
  ));
}