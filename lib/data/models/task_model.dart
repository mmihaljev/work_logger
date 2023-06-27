class Task {
  int taskID;
  int projectID;
  String taskName;
  String? taskDescription;
  double? timeTotal;
  String timeStarted;
  String? timeEnded;

  Task({
    required this.taskID,
    required this.projectID,
    required this.taskName,
    this.taskDescription,
    this.timeTotal,
    required this.timeStarted,
    this.timeEnded,
  });

  Map<String, dynamic> toMap() {
    return {
      'task_id': this.taskID,
      'project_id': this.projectID,
      'task_name': this.taskName,
      'task_description': this.taskDescription,
      'timeTotal': this.timeTotal,
      'time_started': this.timeStarted,
      'timeEnded': this.timeEnded,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      taskID: map['task_id'] as int,
      projectID: map['project_id'] as int,
      taskName: map['task_name'] as String,
      taskDescription: map['task_description'] as String,
      timeTotal: map['time_total'] as double,
      timeStarted: map['time_started'] as String,
      timeEnded: map['time_ended'] as String,
    );
  }
}