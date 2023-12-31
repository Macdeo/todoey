// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxCallback;

  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkBoxCallback,
          // toggleCheckboxState: checkboxCallBack,
        ));
  }
}

// void checkboxCallBack(bool? checkboxState) {
//     setState(() {
//       isChecked = checkboxState ?? true;
//     });
//   }

