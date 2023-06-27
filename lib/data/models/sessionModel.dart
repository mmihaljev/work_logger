class Session {
  int sessionID;
  int taskID;
  String timeStarted;
  String? timeEnded;
  String? description;
  double timePaused = 0;

  Session(this.sessionID, this.taskID, this.timeStarted, this.description);
}
