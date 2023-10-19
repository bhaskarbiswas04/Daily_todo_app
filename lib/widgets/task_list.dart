import 'package:flutter/material.dart';
import 'package:dailytodo_flutter/widgets/task_tile.dart';
import 'package:dailytodo_flutter/modals/task.dart';

// ignore: must_be_immutable
class TaskList extends StatefulWidget {
  TaskList({super.key, required this.tasks});

  List<Task> tasks = [];

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (callBackState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
