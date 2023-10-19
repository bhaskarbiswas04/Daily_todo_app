import 'package:flutter/foundation.dart';
import 'package:dailytodo_flutter/modals/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> taskList = [
    Task(name: 'Buy Dominar400 Bike'),
    Task(name: 'Buy Car TataNexon'),
    Task(name: 'Complete Flutter Course'),
    Task(name: 'Apply for Jobs'),
  ];
}
