// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class ClosingModel {
  final String Id;
  final String MdrName;
  final DateTime? CreatedOn;
  final DateTime? ModifiedOn;
  final String? MdrNotes;
  final String? MdrSLAHari;
  final bool? MdrPendingDokumen;
  final String? pipeline;
  final String? quotation;
  final String? status;
  final String? produk;
  final String? alamat;
  final String? kode_pos;
  final String? created_by;
  final String? no_telp;
  final String? email;
  final ImageModel? image;

  ClosingModel({
    required this.Id,
    required this.MdrName,
    this.CreatedOn,
    this.ModifiedOn,
    this.MdrNotes,
    this.MdrSLAHari,
    this.MdrPendingDokumen,
    this.pipeline,
    this.quotation,
    this.status,
    this.produk,
    this.alamat,
    this.kode_pos,
    this.created_by,
    this.no_telp,
    this.email,
    this.image
  });

  factory ClosingModel.fromJson(Map<String, dynamic> json) {
    return ClosingModel(
      Id: json['Id'],
      MdrName: json['MdrName'],
      CreatedOn: json['CreatedOn'] != null ? DateTime.parse(json['CreatedOn']) : null,
      ModifiedOn: json['ModifiedOn'] != null ? DateTime.parse(json['ModifiedOn']) : null,
      MdrNotes: json['MdrNotes'] ?? "",
      MdrSLAHari: json['MdrSLAHari'] ?? "",
      MdrPendingDokumen: json['MdrPendingDokumen'] ?? false,
      pipeline: json['pipeline'] ?? "",
      quotation: json['quotation'] ?? "",
      status: json['status'] ?? "",
      produk: json['produk'] ?? "",
      alamat: json['alamat'] ?? "",
      kode_pos: json['kode_pos'] ?? "",
      created_by: json['created_by'] ?? "",
      no_telp: json['no_telp'] ?? "",
      email: json['email'] ?? "",
      image: json['image'] != null ? ImageModel.fromJson(json['image']) : null
    );
  }
}
