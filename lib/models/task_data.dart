import 'package:todo_app/models/task.dart';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier {
  List<Tasks> taskList = [
    Tasks(false, 'Buy Grocery'),
    Tasks(false, 'Buy car'),
    Tasks(false, 'Buy bike'),
  ];
  int getLength() {
    return taskList.length;
  }

  void addTask(String newTask) {
    final task = Tasks(false, newTask);
    taskList.add(task);
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    taskList.remove(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.togleDone();
    notifyListeners();
  }
}
