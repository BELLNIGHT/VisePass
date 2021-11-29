import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagespages/registration.dart';

void main() => runApp(ResultPage());

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VisePass'),
      ),
      body: Center(
      ),
    );
  }
}


