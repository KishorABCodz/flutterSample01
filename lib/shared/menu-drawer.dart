import 'package:flutter/material.dart';
import '../screen/intro_screen.dart';
import '../screen/screenSecondCat.dart';

class menudrawer extends StatelessWidget {
  const menudrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'home',
      'login',
      'status',
      'report',
      'contact'
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(color: Colors.red),
      child: Text(
        'camspace',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
    ));
    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
        title: Text(element, style: TextStyle(fontSize: 16)),
        onTap: () {
          switch (element) {
            case 'home':
              screen = IntroScreen();

              break;
            case 'login':
              screen = loginPage();
          }
          Navigator.of(context).pop();
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
      ));
    });
    return menuItems;
  }
}
