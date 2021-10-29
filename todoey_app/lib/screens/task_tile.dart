import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
   TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxCallback,
      required this.longPressCallback});

  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
    VoidCallback   longPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue){
            checkboxCallback(newValue);}
          
          //   onChanged:
          //  onChanged: togglecheckboxState;
        ));
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkboxState;
//   final Function togglecheckboxState;
//   TaskCheckBox(
//       {required bool this.checkboxState,
//       required Function this.togglecheckboxState});

//   @override
//   Widget build(BuildContext context) {
//     return;
//   }
// }

// class TaskCheckBox extends StatefulWidget {
//   const TaskCheckBox({ Key? key }) : super(key: key);

//   @override
//   _TaskCheckBoxState createState() => _TaskCheckBoxState();
// }

// class _TaskCheckBoxState extends State<TaskCheckBox> {
//     bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return  Checkbox(
//         activeColor: Colors.lightBlueAccent,
//           value: isChecked,
//           onChanged: (newValue) {
//             setState(() {
//               isChecked = newValue!;
//             });
//           }

//     );
//   }
