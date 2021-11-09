import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagespages/registration.dart';

class ResultPage extends StatefulWidget {
  ResultPage({Key? key}) : super(key: key);

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('my_name'),
              accountEmail: Text('my_name@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('img/1.png'),
              ),
              ),
          ListTile(title: Text('Documents')),
          Divider(),
           ListTile(title: Text('Personal information')),
          Divider(),
           ListTile(title: Text('Settings')),
          Divider(),
           ListTile(title: Text('Change Password')),
          Divider(),

        ],
      ),
    );
  }
}