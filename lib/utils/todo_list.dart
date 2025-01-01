import 'package:flutter/material.dart';
class TodoList extends StatelessWidget {
  const TodoList({super.key, required this.taskName,
    required this.taskCompleted,
  this.onChanged,});
  final String taskName;
  final bool taskCompleted;
  final ValueChanged<bool?>? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left:20,
        right: 20,
        bottom: 0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(15),

        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Checkbox(value: taskCompleted,
                onChanged: onChanged,
              checkColor: Colors.black,
              activeColor: Colors.white,
              side: const BorderSide(
                color: Colors.white
              ),
            ),
            Text(
              taskName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                decorationThickness: 3
              ),
            ),
          ],
        ),
      ),
    );;
  }
}