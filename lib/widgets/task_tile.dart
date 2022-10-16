import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallBack,
      required this.longpress});
  bool isChecked = false;
  String taskTitle;
  final Function(bool?) checkboxCallBack;
  final Function() longpress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longpress,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallBack,
        ));
  }
}
