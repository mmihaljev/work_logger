class Client {
  int clientID;
  int userId;
  String clientName;
  String? clientMail;
  String? clientAddress;

  Map<String, dynamic> toMap() {
    return {
      'client_id': this.clientID,
      'user_id': this.userId,
      'client_name': this.clientName,
      'client_mail': this.clientMail,
      'client_address': this.clientAddress,
    };
  }

  factory Client.fromMap(Map<String, dynamic> map) {
    return Client(
      clientID: map['client_id'] as int,
      userId: map['user_id'] as int,
      clientName: map['client_name'] as String,
      clientMail: map['client_mail'] as String,
      clientAddress: map['client_address'] as String,
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
