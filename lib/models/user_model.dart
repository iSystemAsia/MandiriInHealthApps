class UserModel_ {
  final String username;
  final String name;
  final String contactId;
  final String kanalId;
  final bool isAgent;
  final String token;
  final DateTime expiresAt;

  UserModel_({
    required this.username,
    required this.name,
    required this.contactId,
    required this.kanalId,
    required this.isAgent,
    required this.token,
    required this.expiresAt,
  });

  factory UserModel_.fromJson(Map<String, dynamic> json) {
    return UserModel_(
      username: json["username"],
      name: json["name"],
      contactId: json["contact_id"],
      kanalId: json["kanal_id"] ?? "",
      isAgent: json["is_agent"] ?? false,
      token: json['token'],
      expiresAt: DateTime.parse(json['expires_at']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "username": username,
      "name": name,
      "contact_id": contactId,
      "kanal_id": kanalId,
      "is_agent": isAgent,
      "token": token,
      "expires_at": expiresAt.toString(),
    };
  }
}
