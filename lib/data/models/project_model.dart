class Project {
  int projectID;
  int clientID;
  String projectName;
  String? projectDescription;
  double? projectSalary;
  String timeStarted;
  String? timeEnded;
  double? timeTotal;
  double? salaryTotal;

  Project({
    required this.projectID,
    required this.clientID,
    required this.projectName,
    this.projectDescription,
    this.projectSalary,
    required this.timeStarted,
    this.timeEnded,
    this.timeTotal,
    this.salaryTotal,
  });

  Map<String, dynamic> toMap() {
    return {
      'project_id': this.projectID,
      'client_id': this.clientID,
      'project_name': this.projectName,
      'project_description': this.projectDescription,
      'project_salary': this.projectSalary,
      'time_started': this.timeStarted,
      'time_ended': this.timeEnded,
      'time_total': this.timeTotal,
      'salary_total': this.salaryTotal,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      projectID: map['project_id'] as int,
      clientID: map['client_id'] as int,
      projectName: map['project_name'] as String,
      projectDescription: map['project_description'] as String,
      projectSalary: map['project_salary'] as double,
      timeStarted: map['time_started'] as String,
      timeEnded: map['time_ended'] as String,
      timeTotal: map['time_total'] as double,
      salaryTotal: map['salary_total'] as double,
    );
  }
}