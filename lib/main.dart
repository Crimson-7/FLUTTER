import 'package:flutter/material.dart';
import 'package:newflutter/pages/Home.dart';

void main() {
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
