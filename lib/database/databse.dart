import 'package:hive_flutter/hive_flutter.dart';

class toDoDataBase{
List todolist=[];




  final _myBox= Hive.openBox('newBox');

void initList(){
todolist=[ ["TASK 1",true],
  ["task 2",false],
  ["Task 3",true]];


}

}