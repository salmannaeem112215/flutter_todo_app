import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, Object>> toDoList = [
    {'title': 'SDA lab 2', 'taskCompleted': true},
    {'title': 'SDA lab 3', 'taskCompleted': false},
    {'title': 'SDA lab 4', 'taskCompleted': true},
    {'title': 'HIVE FLUTTER', 'taskCompleted': false},
  ];

  void checkBoxTick(int index) {
    setState(() {
      toDoList[index]["taskCompleted"] =
          !(toDoList[index]["taskCompleted"] as bool);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (context, index) => ToDoTile(
          title: toDoList[index]["title"] as String,
          taskCompleted: toDoList[index]["taskCompleted"] as bool,
          press: (p0) => checkBoxTick(index),
        ),
      ),
    );
  }
}

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
