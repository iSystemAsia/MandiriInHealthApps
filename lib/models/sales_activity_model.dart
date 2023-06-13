import 'package:mandiri_in_health/models/model_image.dart';

class SalesActivityModel {
  final String id;
  final String namaBU;
  final String updateActivitas;
  final String status;
  final String keteranganProgress;
  final bool isKomit;
  final DateTime? tglAktifitasTerakhir;
  final String? perkiraanClosing;
  final ImageModel? image;

  SalesActivityModel({
    required this.id,
    required this.namaBU,
    required this.updateActivitas,
    required this.status,
    required this.keteranganProgress,
    required this.isKomit,
    this.tglAktifitasTerakhir,
    this.perkiraanClosing,
    this.image
  });

  factory SalesActivityModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;
    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return SalesActivityModel(
      id: json['id'],
      namaBU: json['nama_bu'] ?? "",
      updateActivitas: json['update_aktifitas'] ?? "",
      status: json['status'] ?? "",
      keteranganProgress: json['keteranganProgress'] ?? "",
      isKomit: json['is_komit'],
      tglAktifitasTerakhir: DateTime.parse(json['tanggal_aktifitas_terakhir']),
      perkiraanClosing: json['perkiraan_closing'],
      image: image
    );
  }
}
