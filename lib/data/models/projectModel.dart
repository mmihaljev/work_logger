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

  Project(this.projectID, this.clientID, this.projectName,
      this.projectDescription, this.projectSalary, this.dateStarted);
}