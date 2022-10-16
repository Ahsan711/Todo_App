import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/widgets/task_tile.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.taskList[index].isDone,
              taskTitle: taskData.taskList[index].name,
              longpress: () {
                taskData.deleteTask(taskData.taskList[index]);
              },
              checkboxCallBack: (bool? value) {
                taskData.updateTask(taskData.taskList[index]);
              },
            );
          },
          itemCount: taskData.getLength(),
        );
      },
    );
  }
}
