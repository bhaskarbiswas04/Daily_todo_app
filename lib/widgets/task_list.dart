import 'package:dailytodo_flutter/modals/task_data.dart';
import 'package:flutter/material.dart';
import 'package:dailytodo_flutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskTitle: taskdata.taskList[index].name,
              isChecked: taskdata.taskList[index].isDone,
              checkBoxCallBack: (callBackState) {
                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
            );
          },
          itemCount: taskdata.taskList.length,
        );
      },
    );
  }
}
