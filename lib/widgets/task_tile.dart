import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = true;

  // void currentCheckState

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'First Task hero',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18,
        ),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        currentCheckBoxState: (bool? checkBoxState) {
          setState(() {
            isChecked = checkBoxState!;
          });
        },
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox(
      {super.key,
      required this.checkboxState,
      required this.currentCheckBoxState});

  final bool checkboxState;
  final Function(bool?) currentCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: currentCheckBoxState,
    );
  }
}
