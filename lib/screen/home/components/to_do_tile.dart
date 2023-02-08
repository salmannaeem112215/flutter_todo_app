import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.title,
    required this.taskCompleted,
    this.press,
  });
  final String title;
  final bool taskCompleted;
  final Function(bool?)? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Theme.of(context).primaryColor.withOpacity(0.7),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: press,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  decoration: (taskCompleted)
                      ? TextDecoration.lineThrough
                      : TextDecoration.none,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
