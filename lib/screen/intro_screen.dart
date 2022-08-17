import 'package:flutter/material.dart';
import 'package:sample2/shared/menu-drawer.dart';
import '../shared/menuBottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('sample appication')),
        drawer: menudrawer(),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/');
                  break;
                case 1:
                  Navigator.pushNamed(context, '/login');
                  break;
              }
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              BottomNavigationBarItem(icon: Icon(Icons.login), label: 'login'),
            ]),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/001.jpg'), fit: BoxFit.cover)),
        ));
  }
}
