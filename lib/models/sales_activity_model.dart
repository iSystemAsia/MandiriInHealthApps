// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class SalesActivityModel {
  final String Id;
  final String MdrKodeBooking;
  final String? CreatedOn;
  final String? ModifiedOn;
  final String? MdrStatusAktivitas;
  final String? MdrKeteranganProgres;
  final bool? MdrCommitment;
  final String? MdrLastActivityDate;
  final String? MdrPerkiranClosing;
  final String? UpdateAktivitas;
  final String? Pipeline;
  final String? Alamat;
  final String? KodePos;
  final String? NoTelp;
  final String? Email;
  final String? GWP;
  final String? CreatedBy;
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
    this.UpdateAktivitas,
    this.Pipeline,
    this.Alamat,
    this.KodePos,
    this.NoTelp,
    this.Email,
    this.GWP,
    this.CreatedBy,
    this.image
  });

  factory SalesActivityModel.fromJson(Map<String, dynamic> json) {
    return SalesActivityModel(
      Id: json['Id'],
      MdrKodeBooking: json['MdrKodeBooking'],
      CreatedOn: json['CreatedOn'] ?? "",
      ModifiedOn: json['ModifiedOn'] ?? "",
      MdrStatusAktivitas: json['MdrStatusAktivitas'] ?? "",
      MdrKeteranganProgres: json['MdrKeteranganProgres'] ?? "",
      MdrCommitment: json['MdrCommitment'] ?? false,
      MdrLastActivityDate: json['MdrLastActivityDate'] ?? "",
      MdrPerkiranClosing: json['MdrPerkiranClosing'] ?? "",
      UpdateAktivitas: json['UpdateAktivitas'] ?? "",
      Pipeline: json['Pipeline'] ?? "",
      Alamat: json['Alamat'] ?? "",
      KodePos: json['KodePos'] ?? "",
      NoTelp: json['NoTelp'] ?? "",
      Email: json['Email'] ?? "",
      GWP: json['GWP'] ?? "",
      CreatedBy: json['CreatedBy'] ?? "",
      image: json['image'] != null ? ImageModel.fromJson(json['image']) : null
    );
  }
}
