import 'package:dailytodo_flutter/modals/task.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dailytodo_flutter/modals/task_data.dart';

// ignore: must_be_immutable
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              autofocus: true, //This will automatically open the text field.
              onChanged: (value) {
                newTaskTitle = value;
              },
            ),
            const SizedBox(
              height: 15,
            ),
            MaterialButton(
              padding: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.amber,
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: const Text(
                'ADD',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
