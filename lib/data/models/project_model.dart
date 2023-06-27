class Project {
  int projectID;
  int clientID;
  String projectName;
  String? projectDescription;
  double? projectSalary;
  String dateStarted;
  String? dateEnded;
  double? timeTotal;
  double? salaryTotal;

  Project({
    required this.projectID,
    required this.clientID,
    required this.projectName,
    this.projectDescription,
    this.projectSalary,
    required this.dateStarted,
    this.dateEnded,
    this.timeTotal,
    this.salaryTotal,
  });

  Map<String, dynamic> toMap() {
    return {
      'projectID': this.projectID,
      'clientID': this.clientID,
      'projectName': this.projectName,
      'projectDescription': this.projectDescription,
      'projectSalary': this.projectSalary,
      'dateStarted': this.dateStarted,
      'dateEnded': this.dateEnded,
      'timeTotal': this.timeTotal,
      'salaryTotal': this.salaryTotal,
    };
  }

  factory Project.fromMap(Map<String, dynamic> map) {
    return Project(
      projectID: map['projectID'] as int,
      clientID: map['clientID'] as int,
      projectName: map['projectName'] as String,
      projectDescription: map['projectDescription'] as String,
      projectSalary: map['projectSalary'] as double,
      dateStarted: map['dateStarted'] as String,
      dateEnded: map['dateEnded'] as String,
      timeTotal: map['timeTotal'] as double,
      salaryTotal: map['salaryTotal'] as double,
    );
  }
}