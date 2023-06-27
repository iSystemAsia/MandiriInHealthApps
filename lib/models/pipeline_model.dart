// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class PipelineModel {
  final String Id;
  final String MdrName;
  final String? CreatedOn;
  final String? ModifiedOn;
  final String? MdrEmailAgent;
  final String? MdrNamaDireksi;
  final String? MdrPICName;
  final String? MdrNoTelp;
  final String? MdrEmail;
  final String? MdrAlamat;
  final String? MdrProvinsiWilayahBU;
  final String? MdrKodeBooking;
  final String? MdrJumlahPeserta;
  final String? MdrPremiDisetahunkan;
  final String? MdrPremiPerTermin;
  final String? MdrGWP;
  final bool? MdrKomitmentAgen;
  final bool? MdrKomitmenKaUnit;
  final String? MdrStatusAktivitas;
  final DateTime? MdrTanggalAktifitasBerkahir;
  final String? MdrKeteranganProgres;
  final String? KanalDistribusi;
  final String? InsuranceAgent;
  final String? KaUnit;
  final String? KepalaKPM;
  final String? Produk;
  final String? Status;
  final String? PolisStatus;
  final String? KategoriAsuransiEksisting;
  final String? AsuransiEksisting;
  final String? BrokerName;
  final String? CoInsurance;
  final String? Syariah;
  final String? KepemilikanBU;
  final String? Provinsi;
  final String? Kabupaten;
  final String? Kecamatan;
  final String? Kelurahan;
  final String? KodePosLookup;
  final String? WilayahBadanUsaha;
  final String? SektorIndustri;
  final String? SinergiBankMandiri;
  final String? TerminBayar;
  final String? PerkiraanClosing;
  final String? Quotation;
  final String? UpdateAktifitas;
  final ImageModel? image;

  PipelineModel({
    required this.Id,
    required this.MdrName,
    this.CreatedOn,
    this.ModifiedOn,
    this.MdrEmailAgent,
    this.MdrNamaDireksi,
    this.MdrPICName,
    this.MdrNoTelp,
    this.MdrEmail,
    this.MdrAlamat,
    this.MdrProvinsiWilayahBU,
    this.MdrKodeBooking,
    this.MdrJumlahPeserta,
    this.MdrPremiDisetahunkan,
    this.MdrPremiPerTermin,
    this.MdrGWP,
    this.MdrKomitmentAgen,
    this.MdrKomitmenKaUnit,
    this.MdrStatusAktivitas,
    this.MdrTanggalAktifitasBerkahir,
    this.MdrKeteranganProgres,
    this.KanalDistribusi,
    this.InsuranceAgent,
    this.KaUnit,
    this.KepalaKPM,
    this.Produk,
    this.Status,
    this.PolisStatus,
    this.KategoriAsuransiEksisting,
    this.AsuransiEksisting,
    this.BrokerName,
    this.CoInsurance,
    this.Syariah,
    this.KepemilikanBU,
    this.Provinsi,
    this.Kabupaten,
    this.Kecamatan,
    this.Kelurahan,
    this.KodePosLookup,
    this.WilayahBadanUsaha,
    this.SektorIndustri,
    this.SinergiBankMandiri,
    this.TerminBayar,
    this.PerkiraanClosing,
    this.Quotation,
    this.UpdateAktifitas,
    this.image,
  });

  factory PipelineModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;

    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return PipelineModel(
      Id: json['Id'],
      CreatedOn: json['CreatedOn'] ?? "",
      ModifiedOn: json['ModifiedOn'] ?? "",
      MdrEmailAgent: json['MdrEmailAgent'] ?? "",
      MdrName: json['MdrName'] ?? "",
      MdrNamaDireksi: json['MdrNamaDireksi'] ?? "",
      MdrPICName: json['MdrPICName'] ?? "",
      MdrNoTelp: json['MdrNoTelp'] ?? "",
      MdrEmail: json['MdrEmail'] ?? "",
      MdrAlamat: json['MdrAlamat'] ?? "",
      MdrProvinsiWilayahBU: json['MdrProvinsiWilayahBU'] ?? "",
      MdrKodeBooking: json['MdrKodeBooking'] ?? "",
      MdrJumlahPeserta: json['MdrJumlahPeserta'] ?? "",
      MdrPremiDisetahunkan: json['MdrPremiDisetahunkan'] ?? "",
      MdrPremiPerTermin: json['MdrPremiPerTermin'] ?? "",
      MdrGWP: json['MdrGWP'] ?? "",
      MdrKomitmentAgen: json['MdrKomitmentAgen'] ?? false,
      MdrKomitmenKaUnit: json['MdrKomitmenKaUnit'] ?? false,
      MdrStatusAktivitas: json['MdrStatusAktivitas'] ?? "",
      MdrTanggalAktifitasBerkahir: json['MdrTanggalAktifitasBerkahir'] != null ? DateTime.parse(json['MdrTanggalAktifitasBerkahir']) : null,
      MdrKeteranganProgres: json['MdrKeteranganProgres'] ?? "",
      KanalDistribusi: json['KanalDistribusi'] ?? "",
      InsuranceAgent: json['InsuranceAgent'] ?? "",
      KaUnit: json['KaUnit'] ?? "",
      KepalaKPM: json['KepalaKPM'] ?? "",
      Produk: json['Produk'] ?? "",
      Status: json['Status'] ?? "",
      PolisStatus: json['PolisStatus'] ?? "",
      KategoriAsuransiEksisting: json['KategoriAsuransiEksisting'] ?? "",
      AsuransiEksisting: json['AsuransiEksisting'] ?? "",
      BrokerName: json['BrokerName'] ?? "",
      CoInsurance: json['CoInsurance'] ?? "",
      Syariah: json['Syariah'] ?? "",
      KepemilikanBU: json['KepemilikanBU'] ?? "",
      Provinsi: json['Provinsi'] ?? "",
      Kabupaten: json['Kabupaten'] ?? "",
      Kecamatan: json['Kecamatan'] ?? "",
      Kelurahan: json['Kelurahan'] ?? "",
      KodePosLookup: json['KodePosLookup'] ?? "",
      WilayahBadanUsaha: json['WilayahBadanUsaha'] ?? "",
      SektorIndustri: json['SektorIndustri'] ?? "",
      SinergiBankMandiri: json['SinergiBankMandiri'] ?? "",
      TerminBayar: json['TerminBayar'] ?? "",
      PerkiraanClosing: json['PerkiraanClosing'] ?? "",
      Quotation: json['Quotation'] ?? "",
      UpdateAktifitas: json['UpdateAktifitas'] ?? "",
      image: image
    );
  }
}
