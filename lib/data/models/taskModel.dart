class Task {
  int taskID;
  int projectID;
  String taskName;
  String? taskDescription;
  double? timeTotal;
  String timeStarted;
  String? timeEnded;

  Task(this.taskID, this.projectID, this.taskName, this.taskDescription,
      this.timeStarted);
}