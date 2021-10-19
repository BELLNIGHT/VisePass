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

    Widget _form(String label, void func()){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Text('Login')
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text('Password')
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Text(label)
              )
            )
          ],
        ),
      );
    }


      

    return Scaffold(
      body: Column(
        children: <Widget>[
          _logo(),
          _form('LOGIN', (){}),

        ],
     )
    );
  }
}