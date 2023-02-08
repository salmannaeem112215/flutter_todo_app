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
    toDoList = _myBox.get('ToDos');
    print(_myBox.get('ToDos').toString());
  }

  static void updateDb() {
    _myBox.put('ToDos', toDoList);
  }
}
