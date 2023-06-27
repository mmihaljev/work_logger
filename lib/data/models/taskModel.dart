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
      'taskID': this.taskID,
      'projectID': this.projectID,
      'taskName': this.taskName,
      'taskDescription': this.taskDescription,
      'timeTotal': this.timeTotal,
      'timeStarted': this.timeStarted,
      'timeEnded': this.timeEnded,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      taskID: map['taskID'] as int,
      projectID: map['projectID'] as int,
      taskName: map['taskName'] as String,
      taskDescription: map['taskDescription'] as String,
      timeTotal: map['timeTotal'] as double,
      timeStarted: map['timeStarted'] as String,
      timeEnded: map['timeEnded'] as String,
    );
  }
}