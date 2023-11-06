import 'package:flutter/material.dart';
import 'package:newflutter/pages/ToDo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List todolist=[
      ["TASK 1",true],
      ["task 2",false],
      ["Task 3",true]
  ];
  // checkbox method
  void checkBoxChange(bool? value,int index){
setState(() {
  todolist[index][1]=!todolist[index][1];
});

  }

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
          itemCount: todolist.length,
          itemBuilder:(context, index) {
            return ToDoTiles(taskName: todolist[index][0],
                isCompleted: todolist[index][1] ,
                onChanged: (value) =>checkBoxChange(value,index) );
          },
      ),



    );
  }
}
