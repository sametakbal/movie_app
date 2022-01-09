import 'package:flutter/material.dart';
import 'package:movie_app/pages/main_page.dart';
import 'package:movie_app/pages/splash_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(SplashPage(
      key: UniqueKey(),
      onInitializeComplete: () => runApp(
            ProviderScope(
              child: MyApp(),
            ),
          )));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      initialRoute: 'home',
      routes: {'home': (BuildContext context) => MainPage()},
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
    );
  }
}
