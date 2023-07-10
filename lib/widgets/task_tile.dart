// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallBack(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Buy milk',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckbox(
          checkboxState: isChecked,
          toggleCheckboxState: checkboxCallBack,
        ));
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool? checkboxState;
  final ValueChanged<bool?>? toggleCheckboxState;

  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
