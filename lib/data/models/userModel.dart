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
      'userID': this.userID,
      'totalEarnings': this.totalEarnings,
      'totalActiveProjects': this.totalActiveProjects,
      'totalActiveEarnings': this.totalActiveEarnings,
      'totalFinishedProjects': this.totalFinishedProjects,
    };
  }

  factory Global.fromMap(Map<String, dynamic> map) {
    return Global(
      userID: map['userID'] as int,
      totalEarnings: map['totalEarnings'] as double,
      totalActiveProjects: map['totalActiveProjects'] as int,
      totalActiveEarnings: map['totalActiveEarnings'] as double,
      totalFinishedProjects: map['totalFinishedProjects'] as int,
    );
  }
}