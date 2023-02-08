import 'package:flutter/material.dart';

import 'package:flutter_todo_app/constants.dart';

class ToDoAddCard extends StatelessWidget {
  const ToDoAddCard({
    super.key,
    required this.onCancel,
    required this.onSave,
    required this.controller,
  });

  final TextEditingController controller;
  final VoidCallback onCancel;
  final VoidCallback onSave;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: kBackgroundColor,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor))),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(onPressed: onCancel, child: const Text('Cancel')),
              const SizedBox(width: 5),
              ElevatedButton(onPressed: onSave, child: const Text(' Save ')),
            ],
          )
        ],
      ),
    );
  }
}
