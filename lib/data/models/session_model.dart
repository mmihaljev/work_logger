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
      'sessionID': this.sessionID,
      'taskID': this.taskID,
      'timeStarted': this.timeStarted,
      'timeEnded': this.timeEnded,
      'description': this.description,
      'timePaused': this.timePaused,
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      sessionID: map['sessionID'] as int,
      taskID: map['taskID'] as int,
      timeStarted: map['timeStarted'] as String,
      timeEnded: map['timeEnded'] as String,
      description: map['description'] as String,
      timePaused: map['timePaused'] as double,
    );
  }
}
