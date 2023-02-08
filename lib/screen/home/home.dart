import 'package:flutter/material.dart';
import 'package:flutter_todo_app/screen/home/components/to_do_add_card.dart';

import './components/body.dart';
import '../../data/to_do.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TO DO'),
        centerTitle: true,
        elevation: 1,
      ),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => addToDo(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  void addToDo(BuildContext context) {
    showDialog(
        context: context,
        builder: (content) {
          return ToDoAddCard(
            controller: _controller,
            onCancel: () {
              Navigator.of(context).pop();
            },
            onSave: () {
              setState(() {
                ToDos.addToDo(_controller.text, false);
                Navigator.of(context).pop();
              });
            },
          );
        });
  }
}
