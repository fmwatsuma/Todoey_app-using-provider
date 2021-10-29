
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/tasks_data.dart';
import 'package:todoey_app/screens/add_task_screen.dart';
import 'package:todoey_app/screens/tasks_list.dart';

class TasksScreen extends StatelessWidget {
  
  

  late Widget buildBottomSheet;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
            
              
            
          );
        },
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding:
              const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.list,
                      color: Colors.lightBlueAccent,
                      size: 30,
                    )),
              const   SizedBox(
                  height: 10,
                ),
               const Text(
                  'Todoey',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700),
                ),
                Text('${Provider.of<TaskData>(context).taskCount} Tasks', style:  const TextStyle(color: Colors.white, fontSize: 18)),
              ]),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  20.0,
                ),
                topRight: Radius.circular(20),
              ),
            ),
         child: TasksList(),
            ),
          ),
       // ),
      ]),
    );
  }
}
