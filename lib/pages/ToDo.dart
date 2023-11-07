import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
class ToDoTiles extends StatelessWidget {
  final String taskName ;
  final bool isCompleted;
  Function (bool?)? onChanged;
  Function(BuildContext)? Delete;


   ToDoTiles({super.key,
     required this.taskName,
     required this.isCompleted,
     required this.onChanged,
     required this.Delete});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
                  SlidableAction(onPressed: Delete,
                  icon: Icons.delete_outlined,
                    backgroundColor: Colors.redAccent,
                    borderRadius:BorderRadius.circular(15),
                  )


          ],
        ),
        child: Container(

          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(color: Colors.indigo,borderRadius:BorderRadius.circular(15)),
          child: Row(
            children: [
              // task check box
              Checkbox(
                value: isCompleted,
                onChanged: onChanged,
                activeColor: Colors.green),

              Text(
                taskName,
                style: TextStyle(decoration:isCompleted ? TextDecoration.lineThrough:TextDecoration.none)

              ),
            ],
          ),

        ),
      ),
    );
  }
}
