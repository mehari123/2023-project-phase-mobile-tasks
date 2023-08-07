class Task {
  String name;
  String description;
  String date;
  bool isDone;

  Task(this.name, this.description, this.date, this.isDone);

  get title => null;
  @override
  String toString() {
    return 'Task: $name\nDescription: $description\nDate: $date\nIs Done: $isDone\n';
  }
}
