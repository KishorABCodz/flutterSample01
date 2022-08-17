import 'package:flutter/material.dart';
import 'package:sample2/shared/menu-drawer.dart';
import 'package:sample2/shared/menuBottom.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      bottomNavigationBar: menuBottom(),
      drawer: menudrawer(),
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
