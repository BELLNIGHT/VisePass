import 'package:flutter/material.dart';

void main() => runApp(VisePass());

class VisePass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VisePass'),
      ),
      body: Center(
        child: Text('VisePass'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
      ),
    );
  }
}