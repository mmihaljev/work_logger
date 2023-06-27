class Client {
  int clientID;
  int userId;
  String clientName;
  String? clientMail;
  String? clientAddress;

  Map<String, dynamic> toMap() {
    return {
      'clientId': this.clientID,
      'userId': this.userId,
      'clientName': this.clientName,
      'clientMail': this.clientMail,
      'clientAddress': this.clientAddress,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    return Client(
      clientID: map['clientId'] as int,
      userId: map['userId'] as int,
      clientName: map['clientName'] as String,
      clientMail: map['clientMail'] as String,
      clientAddress: map['clientAddress'] as String,
    );
  }

  Client({
    required this.clientID,
    required this.userId,
    required this.clientName,
    this.clientMail,
    this.clientAddress,
  });
}
