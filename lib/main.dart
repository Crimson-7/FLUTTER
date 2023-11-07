import 'package:flutter/material.dart';
import 'package:newflutter/pages/Home.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async{
  //init hive
 await Hive.initFlutter();

 //open a box???
  var box= await Hive.openBox('newBox');


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false, // debug banner
      home:const Home(),
      theme: ThemeData(primarySwatch: Colors.indigo),
    );
  }
}
