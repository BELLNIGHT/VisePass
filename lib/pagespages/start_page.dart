import 'package:flutter/material.dart';
import 'package:flutter_application_1/pagespages/colorfl.dart';
import 'package:flutter_application_1/pagespages/registration.dart';

void main() => runApp(ResultPage());

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kActiveCardColour,
      appBar: AppBar(
        backgroundColor: kActiveCardColour,
        title: Text(
          "VisePass",
          style: kBodyTextStyle,
        ),
      ),
      
      body: Center(child: RaisedButton(
        
        padding: EdgeInsets.only(left: 70.0, right: 70.0, ),
        
        textColor: Colors.white,
        color: Colors.red,        
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(70)
        ),        
        onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      }, 
      child:Container(
        height: 150,
        child: Center(
          child: Text('Хранилище', 
          textAlign: TextAlign.center,
          style: kLTextStyle, ))),
      )
      ),
        
    );
  }
}



late String _userinfo;
List infoList = [];
void initState(){
  infoList.addAll(Buy milk, ff)
}


class SecondScreen extends StatefulWidget {
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kActiveCardColour,
      appBar: AppBar(backgroundColor: kActiveCardColour,
        title: Text('VisePass. Хранилище.')),
        
      
      body: Center(child: RaisedButton(onPressed: (){
        child: ListView.builder(
          itemCount: infoList.length,
          itemBuilder: (BuildContext context, int index){
            return Desmissible(
              key: key(infoList[index]),
              child: Card(
                child: ListTile(title: Text(infoList[index])),
              )
            );
          }
        );
      

        
      }, child: Text('Назад'))),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: (){
          showDialog(context: context, builder: (BuildContext context){
            return AlertDialog(
              title: Text('Добавить элемент'),
              content: TextField(
                onChanged: (String value){
                  _userinfo = value;



                },
              ),
              actions: [
                ElevatedButton(onPressed: () {
                  setState((){
                    infoList.add(_userinfo);
                  });
                  Navigator.of(context).pop();
                }, child: Text('Добавить'))
              ],



            );
              


          
          });
        },
        child: Icon(
          Icons.add_box,
          color: Colors.white,
        ),
        ),
    );
  }

  Widget Desmissible({key, required Card child}) {}

  key(infoList) {}
  
  )