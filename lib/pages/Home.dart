import 'package:flutter/material.dart';
import 'package:newflutter/pages/ToDo.dart';
import 'package:newflutter/utils/Dialogbox.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = TextEditingController();
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
  //saved the Task
  void saved() {
    setState(() {
      todolist.add([_controller.text, false]);
      _controller.clear(); // Clear the text field
    });
    Navigator.of(context).pop();
  }



//create task
  void createTask(){
      showDialog(
          context: context,
          builder: (context)
      {
          return DialogBox(
            controller:_controller,
            onSave: saved ,
            onCancel:() => Navigator.of(context).pop(),);
      },
          );


  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        elevation: 0,
        title: const Text('TO DO'),
        centerTitle: true,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: createTask,
          child:const Icon(Icons.add)

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
