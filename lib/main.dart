import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanpdable List"),
      ),
      body:ListView(
        children: [
          ExpansionTile(
          title: Text("Expanpdable _ 1"),
            // backgroundColor: Colors.blue.withOpacity(0.4),
            // textColor: Colors.white,
            children: [
              ListTile(
                title: Text("Expanpdable _ 1 _ 1"),
                leading: Icon(Icons.description),
                onTap: (){
                  print("Expanpdable _ 1 _ 1");
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text("Expanpdable _ 2"),
            // backgroundColor: Colors.blue.withOpacity(0.4),
            // textColor: Colors.white,
            children: [
              ListTile(
                title: Text("Expanpdable _ 2 _ 2"),
                leading: Icon(Icons.description),
                onTap: (){
                  print("Expanpdable _ 2 _ 2");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
