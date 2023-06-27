class Session {
  int sessionID;
  int taskID;
  String timeStarted;
  String? timeEnded;
  String? description;
  double? timePaused = 0;

  Session({
    required this.sessionID,
    required this.taskID,
    required this.timeStarted,
    this.timeEnded,
    this.description,
    this.timePaused,
  });

  Map<String, dynamic> toMap() {
    return {
      'session_id': this.sessionID,
      'task_id': this.taskID,
      'time_started': this.timeStarted,
      'time_ended': this.timeEnded,
      'session_description': this.description,
      'time_paused': this.timePaused,
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      sessionID: map['session_id'] as int,
      taskID: map['task_id'] as int,
      timeStarted: map['time_started'] as String,
      timeEnded: map['time_ended'] as String,
      description: map['session_description'] as String,
      timePaused: map['time_paused'] as double,
    );
  }
}
