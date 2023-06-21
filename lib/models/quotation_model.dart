// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class QuotationModel {
  final String Id;
  final String MdrName;
  final DateTime? CreatedOn;
  final DateTime? ModifiedOn;
  final DateTime? MdrInsuranceStartDate;
  final DateTime? MdrInsuranceEndDate;
  final bool? MdrP;
  final bool? MdrI;
  final bool? MdrS;
  final bool? MdrA;
  final bool? MdrHealthtalk;
  final bool? MdrMinimcu;
  final bool? MdrMedivac;
  final bool? MdrOverseas;
  final bool? MdrPickUpClaim;
  final bool? MdrProfitSharing;
  final bool? MdrWellnessProgram;
  final bool? MdrTelemedicine;
  final bool? MdrAso;
  final String? MdrASO1;
  final String? MdrASO2;
  final String? MdrASO3;
  final String? MdrJumlahDepositAso;
  final String? MdrMinTopUpAso;
  final String? MdrFeeAso;
  final bool? MdrEkses;
  final String? MdrEKSES1;
  final String? MdrEKSES2;
  final String? MdrEKSES3;
  final String? MdrMinTopUpEkses;
  final bool? MdrPoolfund;
  final String? MdrPoolfund1;
  final String? MdrPoolfund2;
  final String? MdrPoolfund3;
  final String? MdrPoolfund4;
  final String? MdrPoolfund5;
  final String? MdrDireksiName;
  final String? MdrPICName;
  final String? MdrPhoneNumber;
  final String? MdrEmail;
  final String? MdrNameOnCard;
  final String? MdrAlias;
  final String? MdrNoProposal;
  final String? MdrBookingCode;
  final String? MdrKomisiPersentasePengajuan;
  final String? MdrORPersentasePengajuan;
  final String? MdrIPPersentasePengajuan;
  final String? MdrKomisiPersentaseDiSetujui;
  final String? MdrORPersentaseDiSetujui;
  final String? MdrIPPersentaseDiSetujui;
  final String? MdrSLAPembayaranPremiPengajuan;
  final String? MdrSLAPembayaranKlaimPengajuan;
  final String? MdrKadaluarsaKlaimPengajuan;
  final String? MdrReKlaimPengajuan;
  final String? MdrSLAPembayaranPremiDiSetujui;
  final String? MdrSLAPembayaranKlaimDiSetujui;
  final String? MdrKadaluarsaKlaimDiSetujui;
  final String? MdrReKlaimDisetujui;
  final String? MdrTotalPesertaPengajuan;
  final String? MdrTotalPegawaiPengajuan;
  final String? MdrMaxUsiaDewasaPengajuan;
  final String? MdrMaxUsiaAnakPengaujan;
  final String? MdrMaxJumlahAnakPengajuan;
  final String? MdrMaxUsiaPersalinanPengajuan;
  final String? MdrMaxJumlahPersalinanPengajuan;
  final String? MdrTotalPesertaDiSetujui;
  final String? MdrTotalPegawaiDiSetujui;
  final String? MdrMaxUsiaDewasaDiSetujui;
  final String? MdrMaxUsiaAnakDisetujui;
  final String? MdrMaxJumlahAnakDiSetujui;
  final String? MdrMaxUsiaPersalinanDiSetujui;
  final String? MdrMaxJumlahPersalinanDisetujui;
  final String? MdrCatatanHealthtalk;
  final String? MdrCatatanMinimcu;
  final String? MdrCatatanMedivac;
  final String? MdrCatatanOverseas;
  final String? MdrCatatanPickUpClaim;
  final String? MdrCatatanProfitSharing;
  final String? MdrCatatanWellnessProgram;
  final String? MdrCatatamTelemedicine;
  final String? MdrUnderwritingNotes;
  final String? MdrVirtualAso;
  final String? MdrCatatanAso;
  final String? MdrVirtualEkses;
  final String? MdrCatatanEkses;
  final String? MdrCatatanPoolfund;
  final String? kanal;
  final String? badan_usaha;
  final String? alamat;
  final String? kode_pos;
  final String? gwp;
  final String? created_by;
  final String? status;
  final String? agent;
  final String? kepala_unit;
  final String? kepala_kanal;
  final String? produk;
  final String? skema_produk;
  final String? tujuan_klaim_reimburse_pengajuan;
  final String? tujuan_klaim_reimburse_disetujui;
  final ImageModel? image;

  QuotationModel({
    required this.Id,
    required this.MdrName,
    this.CreatedOn,
    this.ModifiedOn,
    this.MdrInsuranceStartDate,
    this.MdrInsuranceEndDate,
    this.MdrP,
    this.MdrI,
    this.MdrS,
    this.MdrA,
    this.MdrHealthtalk,
    this.MdrMinimcu,
    this.MdrMedivac,
    this.MdrOverseas,
    this.MdrPickUpClaim,
    this.MdrProfitSharing,
    this.MdrWellnessProgram,
    this.MdrTelemedicine,
    this.MdrAso,
    this.MdrASO1,
    this.MdrASO2,
    this.MdrASO3,
    this.MdrJumlahDepositAso,
    this.MdrMinTopUpAso,
    this.MdrFeeAso,
    this.MdrEkses,
    this.MdrEKSES1,
    this.MdrEKSES2,
    this.MdrEKSES3,
    this.MdrMinTopUpEkses,
    this.MdrPoolfund,
    this.MdrPoolfund1,
    this.MdrPoolfund2,
    this.MdrPoolfund3,
    this.MdrPoolfund4,
    this.MdrPoolfund5,
    this.MdrDireksiName,
    this.MdrPICName,
    this.MdrPhoneNumber,
    this.MdrEmail,
    this.MdrNameOnCard,
    this.MdrAlias,
    this.MdrNoProposal,
    this.MdrBookingCode,
    this.MdrKomisiPersentasePengajuan,
    this.MdrORPersentasePengajuan,
    this.MdrIPPersentasePengajuan,
    this.MdrKomisiPersentaseDiSetujui,
    this.MdrORPersentaseDiSetujui,
    this.MdrIPPersentaseDiSetujui,
    this.MdrSLAPembayaranPremiPengajuan,
    this.MdrSLAPembayaranKlaimPengajuan,
    this.MdrKadaluarsaKlaimPengajuan,
    this.MdrReKlaimPengajuan,
    this.MdrSLAPembayaranPremiDiSetujui,
    this.MdrSLAPembayaranKlaimDiSetujui,
    this.MdrKadaluarsaKlaimDiSetujui,
    this.MdrReKlaimDisetujui,
    this.MdrTotalPesertaPengajuan,
    this.MdrTotalPegawaiPengajuan,
    this.MdrMaxUsiaDewasaPengajuan,
    this.MdrMaxUsiaAnakPengaujan,
    this.MdrMaxJumlahAnakPengajuan,
    this.MdrMaxUsiaPersalinanPengajuan,
    this.MdrMaxJumlahPersalinanPengajuan,
    this.MdrTotalPesertaDiSetujui,
    this.MdrTotalPegawaiDiSetujui,
    this.MdrMaxUsiaDewasaDiSetujui,
    this.MdrMaxUsiaAnakDisetujui,
    this.MdrMaxJumlahAnakDiSetujui,
    this.MdrMaxUsiaPersalinanDiSetujui,
    this.MdrMaxJumlahPersalinanDisetujui,
    this.MdrCatatanHealthtalk,
    this.MdrCatatanMinimcu,
    this.MdrCatatanMedivac,
    this.MdrCatatanOverseas,
    this.MdrCatatanPickUpClaim,
    this.MdrCatatanProfitSharing,
    this.MdrCatatanWellnessProgram,
    this.MdrCatatamTelemedicine,
    this.MdrUnderwritingNotes,
    this.MdrVirtualAso,
    this.MdrCatatanAso,
    this.MdrVirtualEkses,
    this.MdrCatatanEkses,
    this.MdrCatatanPoolfund,
    this.kanal,
    this.badan_usaha,
    this.alamat,
    this.kode_pos,
    this.gwp,
    this.created_by,
    this.status,
    this.agent,
    this.kepala_unit,
    this.kepala_kanal,
    this.produk,
    this.skema_produk,
    this.tujuan_klaim_reimburse_pengajuan,
    this.tujuan_klaim_reimburse_disetujui,
    this.image
  });

  factory QuotationModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;
    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return QuotationModel(
      Id: json['Id'],
      MdrName: json['MdrName'],
      CreatedOn: json['CreatedOn'] != null ? DateTime.parse(json['CreatedOn']) : null,
      ModifiedOn: json['ModifiedOn'] != null ? DateTime.parse(json['ModifiedOn']) : null,
      MdrInsuranceStartDate: json['MdrInsuranceStartDate'] != null ? DateTime.parse(json['MdrInsuranceStartDate']) : null,
      MdrInsuranceEndDate: json['MdrInsuranceEndDate'] != null ? DateTime.parse(json['MdrInsuranceEndDate']) : null,
      MdrP: json['MdrP'] ?? false,
      MdrI: json['MdrI'] ?? false,
      MdrS: json['MdrS'] ?? false,
      MdrA: json['MdrA'] ?? false,
      MdrHealthtalk: json['MdrHealthtalk'] ?? false,
      MdrMinimcu: json['MdrMinimcu'] ?? false,
      MdrMedivac: json['MdrMedivac'] ?? false,
      MdrOverseas: json['MdrOverseas'] ?? false,
      MdrPickUpClaim: json['MdrPickUpClaim'] ?? false,
      MdrProfitSharing: json['MdrProfitSharing'] ?? false,
      MdrWellnessProgram: json['MdrWellnessProgram'] ?? false,
      MdrTelemedicine: json['MdrTelemedicine'] ?? false,
      MdrAso: json['MdrAso'] ?? false,
      MdrASO1: json['MdrASO1'] ?? "",
      MdrASO2: json['MdrASO2'] ?? "",
      MdrASO3: json['MdrASO3'] ?? "",
      MdrJumlahDepositAso: json['MdrJumlahDepositAso'] ?? "",
      MdrMinTopUpAso: json['MdrMinTopUpAso'] ?? "",
      MdrFeeAso: json['MdrFeeAso'] ?? "",
      MdrEkses: json['MdrEkses'] ?? false,
      MdrEKSES1: json['MdrEKSES1'] ?? "",
      MdrEKSES2: json['MdrEKSES2'] ?? "",
      MdrEKSES3: json['MdrEKSES3'] ?? "",
      MdrMinTopUpEkses: json['MdrMinTopUpEkses'] ?? "",
      MdrPoolfund: json['MdrPoolfund'] ?? false,
      MdrPoolfund1: json['MdrPoolfund1'] ?? "",
      MdrPoolfund2: json['MdrPoolfund2'] ?? "",
      MdrPoolfund3: json['MdrPoolfund3'] ?? "",
      MdrPoolfund4: json['MdrPoolfund4'] ?? "",
      MdrPoolfund5: json['MdrPoolfund5'] ?? "",
      MdrDireksiName: json['MdrDireksiName'] ?? "",
      MdrPICName: json['MdrPICName'] ?? "",
      MdrPhoneNumber: json['MdrPhoneNumber'] ?? "",
      MdrEmail: json['MdrEmail'] ?? "",
      MdrNameOnCard: json['MdrNameOnCard'] ?? "",
      MdrAlias: json['MdrAlias'] ?? "",
      MdrNoProposal: json['MdrNoProposal'] ?? "",
      MdrBookingCode: json['MdrBookingCode'] ?? "",
      MdrKomisiPersentasePengajuan: json['MdrKomisiPersentasePengajuan'] ?? "",
      MdrORPersentasePengajuan: json['MdrORPersentasePengajuan'] ?? "",
      MdrIPPersentasePengajuan: json['MdrIPPersentasePengajuan'] ?? "",
      MdrKomisiPersentaseDiSetujui: json['MdrKomisiPersentaseDiSetujui'] ?? "",
      MdrORPersentaseDiSetujui: json['MdrORPersentaseDiSetujui'] ?? "",
      MdrIPPersentaseDiSetujui: json['MdrIPPersentaseDiSetujui'] ?? "",
      MdrSLAPembayaranPremiPengajuan: json['MdrSLAPembayaranPremiPengajuan'] ?? "",
      MdrSLAPembayaranKlaimPengajuan: json['MdrSLAPembayaranKlaimPengajuan'] ?? "",
      MdrKadaluarsaKlaimPengajuan: json['MdrKadaluarsaKlaimPengajuan'] ?? "",
      MdrReKlaimPengajuan: json['MdrReKlaimPengajuan'] ?? "",
      MdrSLAPembayaranPremiDiSetujui: json['MdrSLAPembayaranPremiDiSetujui'] ?? "",
      MdrSLAPembayaranKlaimDiSetujui: json['MdrSLAPembayaranKlaimDiSetujui'] ?? "",
      MdrKadaluarsaKlaimDiSetujui: json['MdrKadaluarsaKlaimDiSetujui'] ?? "",
      MdrReKlaimDisetujui: json['MdrReKlaimDisetujui'] ?? "",
      MdrTotalPesertaPengajuan: json['MdrTotalPesertaPengajuan'] ?? "",
      MdrTotalPegawaiPengajuan: json['MdrTotalPegawaiPengajuan'] ?? "",
      MdrMaxUsiaDewasaPengajuan: json['MdrMaxUsiaDewasaPengajuan'] ?? "",
      MdrMaxUsiaAnakPengaujan: json['MdrMaxUsiaAnakPengaujan'] ?? "",
      MdrMaxJumlahAnakPengajuan: json['MdrMaxJumlahAnakPengajuan'] ?? "",
      MdrMaxUsiaPersalinanPengajuan: json['MdrMaxUsiaPersalinanPengajuan'] ?? "",
      MdrMaxJumlahPersalinanPengajuan: json['MdrMaxJumlahPersalinanPengajuan'] ?? "",
      MdrTotalPesertaDiSetujui: json['MdrTotalPesertaDiSetujui'] ?? "",
      MdrTotalPegawaiDiSetujui: json['MdrTotalPegawaiDiSetujui'] ?? "",
      MdrMaxUsiaDewasaDiSetujui: json['MdrMaxUsiaDewasaDiSetujui'] ?? "",
      MdrMaxUsiaAnakDisetujui: json['MdrMaxUsiaAnakDisetujui'] ?? "",
      MdrMaxJumlahAnakDiSetujui: json['MdrMaxJumlahAnakDiSetujui'] ?? "",
      MdrMaxUsiaPersalinanDiSetujui: json['MdrMaxUsiaPersalinanDiSetujui'] ?? "",
      MdrMaxJumlahPersalinanDisetujui: json['MdrMaxJumlahPersalinanDisetujui'] ?? "",
      MdrCatatanHealthtalk: json['MdrCatatanHealthtalk'] ?? "",
      MdrCatatanMinimcu: json['MdrCatatanMinimcu'] ?? "",
      MdrCatatanMedivac: json['MdrCatatanMedivac'] ?? "",
      MdrCatatanOverseas: json['MdrCatatanOverseas'] ?? "",
      MdrCatatanPickUpClaim: json['MdrCatatanPickUpClaim'] ?? "",
      MdrCatatanProfitSharing: json['MdrCatatanProfitSharing'] ?? "",
      MdrCatatanWellnessProgram: json['MdrCatatanWellnessProgram'] ?? "",
      MdrCatatamTelemedicine: json['MdrCatatamTelemedicine'] ?? "",
      MdrUnderwritingNotes: json['MdrUnderwritingNotes'] ?? "",
      MdrVirtualAso: json['MdrVirtualAso'] ?? "",
      MdrCatatanAso: json['MdrCatatanAso'] ?? "",
      MdrVirtualEkses: json['MdrVirtualEkses'] ?? "",
      MdrCatatanEkses: json['MdrCatatanEkses'] ?? "",
      MdrCatatanPoolfund: json['MdrCatatanPoolfund'] ?? "",
      kanal: json['kanal'] ?? "",
      badan_usaha: json['badan_usaha'] ?? "",
      status: json['status'] ?? "",
      agent: json['agent'] ?? "",
      kepala_unit: json['kepala_unit'] ?? "",
      kepala_kanal: json['kepala_kanal'] ?? "",
      produk: json['produk'] ?? "",
      skema_produk: json['skema_produk'] ?? "",
      tujuan_klaim_reimburse_pengajuan: json['tujuan_klaim_reimburse_pengajuan'] ?? "",
      tujuan_klaim_reimburse_disetujui: json['tujuan_klaim_reimburse_disetujui'] ?? "",
      image: image
    );
  }
}
