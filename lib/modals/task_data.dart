import 'package:flutter/foundation.dart';
import 'package:dailytodo_flutter/modals/task.dart';
import 'package:collection/collection.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _taskList = [];

  int get taskCount {
    return _taskList.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_taskList);
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _taskList.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _taskList.remove(task);
    notifyListeners();
  }
}
