import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/models/tasks_data.dart';
import 'package:todoey_app/screens/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];

            return TaskTile(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkboxCallback: (bool checkboxState) {
                taskData.updateTask(task);

                // setState(() {
                //   widget.tasks[index].toggleDone();
                // });
              },
              longPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount);
    });
  }
}
