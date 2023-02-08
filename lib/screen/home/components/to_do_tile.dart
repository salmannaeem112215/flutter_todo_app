import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_todo_app/constants.dart';

class ToDoTile extends StatelessWidget {
  const ToDoTile({
    super.key,
    required this.title,
    required this.taskCompleted,
    this.press,
    required this.deleteFunction,
  });
  final String title;
  final bool taskCompleted;
  final Function(bool?)? press;
  final Function deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kDangerColor,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: const EdgeInsets.only(top: 15),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: (ctx) => deleteFunction(),
            icon: Icons.delete,
            borderRadius:
                const BorderRadius.horizontal(right: Radius.circular(5)),
            backgroundColor: kDangerColor,
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: kPrimaryLightColor,
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
      ),
    );
  }
}
