import 'package:dailytodo_flutter/screens/add_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:dailytodo_flutter/widgets/task_list.dart';
import 'package:dailytodo_flutter/modals/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> taskList = [
    Task(name: 'Buy Bike'),
    Task(name: 'Buy Car'),
    Task(name: 'Complete Flutter Course'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff836096),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) =>
                  AddTaskScreen(newTaskCallBack: (newTaskTitle) {
                    setState(() {
                      taskList.add(Task(name: newTaskTitle));
                    });
                    Navigator.pop(context);
                  }));
        },
        backgroundColor: const Color(0xff9DB2BF),
        child: Icon(Icons.add),
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
                    color: Color.fromARGB(255, 203, 139, 237),
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
                  '${taskList.length} Tasks',
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
              child: TaskList(tasks: taskList),
            ),
          ),
        ],
      ),
    );
  }
}
