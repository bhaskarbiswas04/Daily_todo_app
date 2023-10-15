import 'package:dailytodo_flutter/screens/add_task_screen.dart';
import 'package:flutter/material.dart';
import 'package:dailytodo_flutter/widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff836096),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen());
        },
        backgroundColor: Color(0xff9DB2BF),
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 90, right: 30, bottom: 0, left: 30),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  child: Icon(
                    Icons.list_rounded,
                    size: 40,
                    color: Color.fromARGB(255, 203, 139, 237),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'ToDo',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(color: Colors.white70, fontSize: 18.0),
                ),
                SizedBox(
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
