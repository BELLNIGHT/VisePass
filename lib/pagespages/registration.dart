import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
   AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {

    Widget _logo(){
      return Padding(
        padding: EdgeInsets.only(top:100),
        child: Container(
          child: Align(
            child: Text('VisePass', style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: Colors.red)
          )      
        )
      )
      );  
    }
    return Scaffold(
      body: Column(
        children: <Widget>[
          _logo(),
          //_form(),

        ],
     )
    );
  }
}