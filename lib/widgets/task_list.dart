import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dailytodo_flutter/widgets/task_tile.dart';
import 'package:dailytodo_flutter/modals/task_data.dart';

// ignore: must_be_immutable
class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskdata.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkboxState) {
                taskdata.updateTask(task);
              },
              longPressCallBack: () {
                taskdata.deleteTask(task);
              },
            );
          },
          itemCount: taskdata.tasks.length,
        );
      },
    );
  }
}
