import 'package:flutter/material.dart';
import 'package:newflutter/utils/Buttons.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightBlueAccent,
      content: Container(height: 100,

      child: Column(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
        //user input
          children:[
       TextField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: "ADD NEW TASKS",
        ),
      ),
       //Buttons
       Row(
         mainAxisAlignment: MainAxisAlignment.end,
         children: [

        //ADD
         MyButton(text: "Save", onPressed: onSave),
         const SizedBox(width: 70),
         //Cancel
        MyButton(text: "Cancel", onPressed: onCancel),



       ],)     //add/cancel button
      ]),
      ),
    );
  }
}
