import 'package:mandiri_in_health/models/model_image.dart';

class PipelineModel {
  final String id;
  final String title;
  final String kanal;
  final String info;
  final bool isKomit;
  final String? telpNo;
  final String? address;
  final ImageModel? image;

  PipelineModel({
    required this.id,
    required this.title,
    required this.kanal,
    required this.info,
    required this.isKomit,
    this.telpNo,
    this.address,
    this.image
  });

  factory PipelineModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;
    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return PipelineModel(
      id: json['id'],
      title: json['title'] ?? "",
      kanal: json['kanal'] ?? "",
      info: json['info'] ?? "",
      isKomit: json['is_komit'],
      telpNo: json['telp_no'] ?? "",
      address: json['address'] ?? "",
      image: image
    );
  }
}
