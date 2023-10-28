import 'package:flutter/material.dart';
import 'package:dailytodo_flutter/widgets/task_list.dart';
import 'package:dailytodo_flutter/screens/add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:dailytodo_flutter/modals/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6499E9),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context, builder: (context) => const AddTaskScreen());
        },
        backgroundColor: const Color(0xff6499E9),
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 90, right: 30, bottom: 0, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Icon(
                    Icons.list_rounded,
                    size: 40,
                    color: Color(0xff9EDDFF),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'ToDo',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks.',
                  style: const TextStyle(color: Colors.white70, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),
    );
  }
}
