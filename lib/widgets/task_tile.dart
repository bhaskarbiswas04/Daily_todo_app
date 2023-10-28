import 'package:flutter/material.dart';
// import 'package:dailytodo_flutter/modals/task.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.taskTitle,
      required this.isChecked,
      required this.checkBoxCallBack,
      required this.longPressCallBack});

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;
  final VoidCallback longPressCallBack;

  // void currentCheckState

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallBack(newValue);
        },
      ),
    );
  }
}
