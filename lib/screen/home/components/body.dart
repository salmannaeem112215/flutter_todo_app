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
      ToDos.toDoList[index][1] = !ToDos.toDoList[index][1];
      ToDos.updateDb();
    });
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    ToDos.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: ToDos.toDoList.length,
        itemBuilder: (context, index) => ToDoTile(
          title: ToDos.toDoList[index][0],
          taskCompleted: ToDos.toDoList[index][1],
          press: (p0) => checkBoxTick(index),
          deleteFunction: () {
            setState(() {
              ToDos.deleteToDo(index);
              ToDos.updateDb();
            });
          },
        ),
      ),
    );
  }
}
