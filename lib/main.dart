import 'package:flutter/material.dart';
import 'package:sample2/screen/intro_screen.dart';
import 'package:sample2/screen/screenSecondCat.dart';

void main() {
  runApp(MySPACE());
}

class MySPACE extends StatelessWidget {
  const MySPACE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      routes: {
        '/': (context) => IntroScreen(),
        '/login': (context) => loginPage(),
      },
      initialRoute: '/',
    );
  }
}
