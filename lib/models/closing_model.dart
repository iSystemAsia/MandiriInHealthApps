// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class ClosingModel {
  final String Id;
  final String MdrName;
  final String? CreatedOn;
  final String? ModifiedOn;
  final String? MdrNotes;
  final String? MdrSLAHari;
  final bool? MdrPendingDokumen;
  final String? Pipeline;
  final String? Quotation;
  final String? ClosingStatus;
  final String? Product;
  final String? Alamat;
  final String? KodePos;
  final String? CreatedBy;
  final String? PhoneNumber;
  final String? Email;
  final ImageModel? image;

  ClosingModel({
    required this.Id,
    required this.MdrName,
    this.CreatedOn,
    this.ModifiedOn,
    this.MdrNotes,
    this.MdrSLAHari,
    this.MdrPendingDokumen,
    this.Pipeline,
    this.Quotation,
    this.ClosingStatus,
    this.Product,
    this.Alamat,
    this.KodePos,
    this.CreatedBy,
    this.PhoneNumber,
    this.Email,
    this.image
  });

  factory ClosingModel.fromJson(Map<String, dynamic> json) {
    return ClosingModel(
      Id: json['Id'],
      MdrName: json['MdrName'],
      CreatedOn: json['CreatedOn'] ?? "",
      ModifiedOn: json['ModifiedOn'] ?? "",
      MdrNotes: json['MdrNotes'] ?? "",
      MdrSLAHari: json['MdrSLAHari'] ?? "",
      MdrPendingDokumen: json['MdrPendingDokumen'] ?? false,
      Pipeline: json['Pipeline'] ?? "",
      Quotation: json['Quotation'] ?? "",
      ClosingStatus: json['ClosingStatus'] ?? "",
      Product: json['Product'] ?? "",
      Alamat: json['Alamat'] ?? "",
      KodePos: json['KodePos'] ?? "",
      CreatedBy: json['CreatedBy'] ?? "",
      PhoneNumber: json['PhoneNumber'] ?? "",
      Email: json['Email'] ?? "",
      image: json['image'] != null ? ImageModel.fromJson(json['image']) : null
    );
  }
}
