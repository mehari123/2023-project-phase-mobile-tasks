class Task {
  String name;
  String description;
  DateTime date;
  bool isDone;

  Task(this.name, this.description, this.date, this.isDone);

  void updateTask(String newName, String newDescription, DateTime newDate) {
    name = newName;
    description = newDescription;
    date = newDate;
  }

  void markAsDone() {
    isDone = true;
  }

  void markAsPending() {
    isDone = false;
  }

  @override
  String toString() {
    return 'Task: $name\nDescription: $description\nDate: $date\nStatus: ${isDone ? "Completed" : "Pending"}\n';
  }
}
