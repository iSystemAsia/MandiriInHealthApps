import 'package:mandiri_in_health/models/model_image.dart';

class AchievementAgentModel {
  final int id;
  final String title;
  final String info;
  final ImageModel? image;

  AchievementAgentModel({
    required this.id,
    required this.title,
    required this.info,
    this.image
  });

  factory AchievementAgentModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;
    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return AchievementAgentModel(
      id: json['id'],
      title: json['title'] ?? "",
      info: json['info'] ?? "",
      image: image
    );
  }
}
