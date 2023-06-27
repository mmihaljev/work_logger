class Global {
  final int userID;
  double totalEarnings = 0;
  int totalActiveProjects = 0;
  double totalActiveEarnings = 0;
  int totalFinishedProjects = 0;

  Global({
    required this.userID,
    required this.totalEarnings,
    required this.totalActiveProjects,
    required this.totalActiveEarnings,
    required this.totalFinishedProjects,
  });

  Map<String, dynamic> toMap() {
    return {
      'user_id': this.userID,
      'total_earnings': this.totalEarnings,
      'total_active_projects': this.totalActiveProjects,
      'total_active_earnings': this.totalActiveEarnings,
      'total_finished_projects': this.totalFinishedProjects,
    };
  }

  factory Global.fromMap(Map<String, dynamic> map) {
    return Global(
      userID: map['user_id'] as int,
      totalEarnings: map['total_earnings'] as double,
      totalActiveProjects: map['total_active_projects'] as int,
      totalActiveEarnings: map['total_active_earnings'] as double,
      totalFinishedProjects: map['total_finished_projects'] as int,
    );
  }
}