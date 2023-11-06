import 'package:flutter/material.dart';
class ToDoTiles extends StatelessWidget {
  final String taskName ;
  final bool isCompleted;
  Function (bool?)? onChanged;


   ToDoTiles({super.key,required this.taskName,required this.isCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(color: Colors.indigo,borderRadius:BorderRadius.circular(15)),
        child: Row(
          children: [
            // task check box
            Checkbox(value: isCompleted, onChanged: onChanged),
            Text(taskName),
          ],
        ),

      ),
    );
  }
}
