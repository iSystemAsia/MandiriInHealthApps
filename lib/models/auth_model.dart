import 'package:mandiri_in_health/models/user_model.dart';

class AuthModel {
  final bool success;
  final String message;
  final UserModel_? user;

  AuthModel({
    required this.success,
    required this.message,
    required this.user,
  });

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    UserModel_? user;
    
    return AuthModel(
      success: json['success'],
      message: json['message'] ?? "",
      user: json['user'] != null ? UserModel_.fromJson(json['user']) : user,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "success": success,
      "message": message,
      "user": user!.toJson(),
    };
  }
}
