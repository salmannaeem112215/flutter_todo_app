import 'package:flutter/material.dart';

import './to_do_tile.dart';
import '../../../data/to_do.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  void checkBoxTick(int index) {
    setState(() {
      ToDos.toDoList[index].taskCompleted =
          !ToDos.toDoList[index].taskCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: ToDos.toDoList.length,
        itemBuilder: (context, index) => ToDoTile(
          title: ToDos.toDoList[index].title,
          taskCompleted: ToDos.toDoList[index].taskCompleted,
          press: (p0) => checkBoxTick(index),
          deleteFunction: () {
            setState(() {
              ToDos.deleteToDo(index);
            });
          },
        ),
      ),
    );
  }
}
