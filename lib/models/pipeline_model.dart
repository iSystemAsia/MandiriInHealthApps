// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';

class PipelineModel {
  final String Id;
  final String MdrName;
  final DateTime? CreatedOn;
  final DateTime? ModifiedOn;
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
  final String? kanal;
  final String? agent;
  final String? kepala_unit;
  final String? kepala_kanal;
  final String? produk;
  final String? status;
  final String? status_polis;
  final String? kategori_asuransi_eksisting;
  final String? asuransi_eksisting;
  final String? broker;
  final String? co_insurance;
  final String? syariah;
  final String? kepemilikan_bu;
  final String? provinsi;
  final String? kabupaten;
  final String? kecamatan;
  final String? kelurahan;
  final String? kode_pos;
  final String? wilayah_badan_usaha;
  final String? sektor_industri;
  final String? sinergi_bank_mandiri;
  final String? termin_bayar;
  final String? perkiraan_closing;
  final String? quotation;
  final String? update_aktifitas;
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
    this.kanal,
    this.agent,
    this.kepala_unit,
    this.kepala_kanal,
    this.produk,
    this.status,
    this.status_polis,
    this.kategori_asuransi_eksisting,
    this.asuransi_eksisting,
    this.broker,
    this.co_insurance,
    this.syariah,
    this.kepemilikan_bu,
    this.provinsi,
    this.kabupaten,
    this.kecamatan,
    this.kelurahan,
    this.kode_pos,
    this.wilayah_badan_usaha,
    this.sektor_industri,
    this.sinergi_bank_mandiri,
    this.termin_bayar,
    this.perkiraan_closing,
    this.quotation,
    this.update_aktifitas,
    this.image,
  });

  factory PipelineModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;

    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    return PipelineModel(
      Id: json['Id'],
      CreatedOn: json['CreatedOn'] != null ? DateTime.parse(json['CreatedOn']) : null,
      ModifiedOn: json['ModifiedOn'] != null ? DateTime.parse(json['ModifiedOn']) : null,
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
      kanal: json['kanal'] ?? "",
      agent: json['agent'] ?? "",
      kepala_unit: json['kepala_unit'] ?? "",
      kepala_kanal: json['kepala_kanal'] ?? "",
      produk: json['produk'] ?? "",
      status: json['status'] ?? "",
      status_polis: json['status_polis'] ?? "",
      kategori_asuransi_eksisting: json['kategori_asuransi_eksisting'] ?? "",
      asuransi_eksisting: json['asuransi_eksisting'] ?? "",
      broker: json['broker'] ?? "",
      co_insurance: json['co_insurance'] ?? "",
      syariah: json['syariah'] ?? "",
      kepemilikan_bu: json['kepemilikan_bu'] ?? "",
      provinsi: json['provinsi'] ?? "",
      kabupaten: json['kabupaten'] ?? "",
      kecamatan: json['kecamatan'] ?? "",
      kelurahan: json['kelurahan'] ?? "",
      kode_pos: json['kode_pos'] ?? "",
      wilayah_badan_usaha: json['wilayah_badan_usaha'] ?? "",
      sektor_industri: json['sektor_industri'] ?? "",
      sinergi_bank_mandiri: json['sinergi_bank_mandiri'] ?? "",
      termin_bayar: json['termin_bayar'] ?? "",
      perkiraan_closing: json['perkiraan_closing'] ?? "",
      quotation: json['quotation'] ?? "",
      update_aktifitas: json['update_aktifitas'] ?? "",
      image: image
    );
  }
}
