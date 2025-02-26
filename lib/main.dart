import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "listview",
    home: Scaffold(
      appBar: AppBar(
        title: Text("listView widget"),
        backgroundColor: Colors.blue,
      ),
      body: MyApp(),
    ),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<int> list =[];

  @override
  void initState() {
    for(int i=0;i<=50;i++){
      list.add(i);
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext c,int index){
          return
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                ),
                title: Text("item no ${list[index]}"),
                subtitle: const Text('This is subtitle'),
                  trailing: Icon(Icons.arrow_forward),
              );
        }) ;


  }
}
