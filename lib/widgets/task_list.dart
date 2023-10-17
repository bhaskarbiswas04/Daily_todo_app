import 'package:flutter/material.dart';
import 'package:dailytodo_flutter/widgets/task_tile.dart';
import 'package:dailytodo_flutter/modals/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> taskList = [
    Task(name: 'Buy Bike'),
    Task(name: 'Buy Car'),
    Task(name: 'Complete Flutter Course'),
    Task(name: 'Take parents to vacation'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskList[index].name,
          isChecked: taskList[index].isDone,
          checkBoxCallBack: (callBackState) {
            setState(() {
              taskList[index].toggleDone();
            });
          },
        );
      },
      itemCount: taskList.length,
    );
  }
}
