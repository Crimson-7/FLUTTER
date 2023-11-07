import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:newflutter/database/databse.dart';
import 'package:newflutter/pages/ToDo.dart';
import 'package:newflutter/utils/Dialogbox.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //reference hive
  final _myBox= Hive.openBox('newBox');
  toDoDataBase db= toDoDataBase();

  final _controller = TextEditingController();

  // checkbox method
  void checkBoxChange(bool? value,int index){
setState(() {
  db.todolist[index][1]=!db.todolist[index][1];
});

  }
  //saved the Task
  void saved() {
    setState(() {
      db.todolist.add([_controller.text, false]);
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
  void deleteTask(int index){
      setState(() {
        db.todolist.removeAt(index);
      });

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
          itemCount: db.todolist.length,
          itemBuilder:(context, index) {
            return ToDoTiles(taskName: db.todolist[index][0],
                isCompleted: db.todolist[index][1] ,
                onChanged: (value) =>checkBoxChange(value,index),
              Delete: (p0) => deleteTask(index),
            );

          },
      ),



    );
  }
}
