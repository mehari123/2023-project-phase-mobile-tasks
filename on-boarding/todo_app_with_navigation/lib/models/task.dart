class Task {
  String name;
  String description;
  DateTime date;
  bool isDone;

  Task(this.name, this.description, this.date, this.isDone);
  @override
  String toString() {
    return 'Task: $name\nDescription: $description\nDate: $date\nIs Done: $isDone\n';
  }
}
