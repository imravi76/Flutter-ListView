import 'package:flutter/material.dart';

void main(){
  runApp(
    new MaterialApp(

      home:MyApp()

    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        appBar: new AppBar(title: Text("My App")),
        body: MyListView(),
        ),
      
    );
  }
}

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: ListTile.divideTiles(
        context: context,
        tiles: [
          ListTile(

          leading: new Icon(Icons.supervised_user_circle),
          title: new Text("Ravi Singh"),
          subtitle: new Text("Student"),

        ),

        ListTile(

          leading: new Icon(Icons.bluetooth),
          title: new Text("Aaryan Gupta"),
          subtitle: new Text("Student"),

        ),

        ListTile(

          leading: new Icon(Icons.wifi),
          title: new Text("Abhishek Singhal"),
          subtitle: new Text("Student"),

        ),
        ],
      ).toList(),
      
    );
  }
}