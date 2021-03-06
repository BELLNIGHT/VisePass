import 'package:flutter/material.dart';
import 'package:flutter_application_1/ft/password.dart';
import 'package:flutter_application_1/pagespages/colorfl.dart';
import 'package:flutter_application_1/ft/password.dart';
class AuthPage extends StatefulWidget {
   AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  TextEditingController _loginController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  
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

    Widget _input(Icon icon, String hint, TextEditingController controller, bool obscure){
      return Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: TextField(
          controller: controller,
          obscureText: obscure,
          style: TextStyle(fontSize: 20, color: Colors.blue),
          decoration: InputDecoration(
            hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue),
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 3)
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 1)
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: IconTheme(
                data: IconThemeData(color: Colors.blue),
                child: icon
              )
            )
          ),
        ),
      );
  }

    Widget _form(String label, void func()){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: _input(Icon(Icons.email), "Email", _loginController, false)
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: _input(Icon(Icons.lock), "Password", _passwordController, true)
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
          _form('', (){}),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => Passwords()),
              );
            },
            child: Container(
              height: 80,
              color: kclf,
              child: const Center(child: Text('Start', style: lfd,)),
              )
            ),
          GestureDetector(
            onTap: (){},
            child: Container(
              color: Colors.red,
              child: const Center(child: Text('Forgot your password?', style: lfd,)),
              )
            ),
          GestureDetector(
            onTap: (){

  
            },
            child: Container(
              color: Colors.blue,
              child: const Center(child: Text('Register', style: lfd,)),
              )
            ),
        ],
     )
    );
  }
}

