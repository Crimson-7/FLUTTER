import 'package:flutter/material.dart';
import 'package:newflutter/pages/ToDo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List todolist=[




  ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        elevation: 0,
        title: Text('TO DO'),
        centerTitle: true,
      ),
      body: ListView.builder(


      ),



    );
  }
}
