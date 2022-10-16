class Tasks {
  Tasks(this.isDone, this.name);
  late String name;
  late bool isDone;
  void togleDone() {
    isDone = !isDone;
  }
}
