// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class SalesActivityModel {
  final String Id;
  final String MdrKodeBooking;
  final DateTime? CreatedOn;
  final DateTime? ModifiedOn;
  final String? MdrStatusAktivitas;
  final String? MdrKeteranganProgres;
  final bool? MdrCommitment;
  final DateTime? MdrLastActivityDate;
  final String? MdrPerkiranClosing;
  final String? update_aktifitas;
  final String? pipeline;
  final String? alamat;
  final String? kode_pos;
  final String? no_telp;
  final String? email;
  final String? gwp;
  final String? created_by;
  final ImageModel? image;

  SalesActivityModel({
    required this.Id,
    required this.MdrKodeBooking,
    this.CreatedOn,
    this.ModifiedOn,
    this.MdrStatusAktivitas,
    this.MdrKeteranganProgres,
    this.MdrCommitment,
    this.MdrLastActivityDate,
    this.MdrPerkiranClosing,
    this.update_aktifitas,
    this.pipeline,
    this.alamat,
    this.kode_pos,
    this.no_telp,
    this.email,
    this.gwp,
    this.created_by,
    this.image
  });

  factory SalesActivityModel.fromJson(Map<String, dynamic> json) {
    return SalesActivityModel(
      Id: json['Id'],
      MdrKodeBooking: json['MdrKodeBooking'],
      CreatedOn: json['CreatedOn'] != null ? DateTime.parse(json['CreatedOn']) : null,
      ModifiedOn: json['ModifiedOn'] != null ? DateTime.parse(json['ModifiedOn']) : null,
      MdrStatusAktivitas: json['MdrStatusAktivitas'] ?? "",
      MdrKeteranganProgres: json['MdrKeteranganProgres'] ?? "",
      MdrCommitment: json['MdrCommitment'] ?? false,
      MdrLastActivityDate: json['MdrLastActivityDate'] != null ? DateTime.parse(json['MdrLastActivityDate']) : null,
      MdrPerkiranClosing: json['MdrPerkiranClosing'] ?? "",
      update_aktifitas: json['update_aktifitas'] ?? "",
      pipeline: json['pipeline'] ?? "",
      alamat: json['alamat'] ?? "",
      kode_pos: json['kode_pos'] ?? "",
      no_telp: json['no_telp'] ?? "",
      email: json['email'] ?? "",
      gwp: json['gwp'] ?? "",
      created_by: json['created_by'] ?? "",
      image: json['image'] != null ? ImageModel.fromJson(json['image']) : null
    );
  }
}
