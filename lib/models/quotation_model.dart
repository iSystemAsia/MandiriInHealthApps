import 'package:mandiri_in_health/models/model_image.dart';

class QuotationModel {
  final String id;
  final String namaBU;
  final String noProposal;
  final String quotationStatus;
  final String? telpNo;
  final String? address;
  final ImageModel? image;

  QuotationModel({
    required this.id,
    required this.namaBU,
    required this.noProposal,
    required this.quotationStatus,
    this.telpNo,
    this.address,
    this.image
  });

  factory QuotationModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;
    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return QuotationModel(
      id: json['id'],
      namaBU: json['nama_bu'] ?? "",
      noProposal: json['no_proposal'] ?? "",
      quotationStatus: json['quotation_status'] ?? "",
      telpNo: json['telp_no'] ?? "",
      address: json['address'] ?? "",
      image: image
    );
  }
}
