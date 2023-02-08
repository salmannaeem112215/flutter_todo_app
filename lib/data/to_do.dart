import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ToDos {
  //refernece our box
  static final _myBox = Hive.box("ToDos");

  static List toDoList = [];
  static void addToDo(String title, bool taskCompleted) {
    if (title == "") return;
    toDoList.add([title, taskCompleted]);
  }

  static void deleteToDo(int index) {
    if (index < toDoList.length) {
      toDoList.removeAt(index);
    }
  }

  static void loadData() {
    final data = _myBox.get('ToDos');
    if (data != null) toDoList = data;
  }

  static int getLengt() {
    final List? data = _myBox.get('ToDos');
    if (data == null) return 0;
    return data.length;
  }

  static void updateDb() {
    _myBox.put('ToDos', toDoList);
    print(getLengt().toString());
  }
}
