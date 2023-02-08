class ToDo {
  final String title;
  bool taskCompleted;

  ToDo({required this.title, required this.taskCompleted});
}

class ToDos {
  static List<ToDo> toDoList = [
    ToDo(title: 'SDA lab 1', taskCompleted: true),
    ToDo(title: 'SDA lab 2', taskCompleted: true),
    ToDo(title: 'SDA lab 3', taskCompleted: false),
    ToDo(title: 'SDA lab 4', taskCompleted: false),
    ToDo(title: 'Hive Flutter', taskCompleted: false),
  ];

  static void addToDo(String title, bool taskCompleted) {
    if (title == "") return;

    toDoList.add(ToDo(title: title, taskCompleted: taskCompleted));
    print('Added');
  }

  static void deleteToDo(int index) {
    if (index < toDoList.length) {
      toDoList.removeAt(index);
    }
  }
}
