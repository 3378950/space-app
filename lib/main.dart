import 'package:flutter/material.dart';
import 'package:space_app/pages/home.dart';
import 'package:space_app/pages/login.dart';
import 'package:space_app/theme.dart';

void main() {
  runApp(const Space());
}

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'space',
      theme: ThemeData(
        primarySwatch: primary,
        tabBarTheme: tabBarTheme
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) =>  Login()
      },
    );
  }
}


