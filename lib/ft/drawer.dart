import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage_generator.dart';

class MainDrawer extends StatefulWidget {
  MainDrawer({Key key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('VisePass'),
              accountEmail: Text('visepass@gmail.com'),

              ),
          ListTile(
          leading: Icon(Icons.addchart),
          title: Text('Создать новый пароль'),
          onTap: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          ),
          Divider(),
           ListTile(title: Text('Настройки')),
          Divider(),
           ListTile(title: Text('О себе')),
          Divider(),

        ],
      ),
    );
  }
}