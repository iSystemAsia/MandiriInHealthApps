// ignore_for_file: non_constant_identifier_names

import 'package:mandiri_in_health/models/model_image.dart';
import 'package:mandiri_in_health/models/riwayat_sales_activity_model.dart';

class PipelineModel {
  final String Id;
  final String MdrName;
  final String? CreatedBy;
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
  final String? MdrTanggalAktifitasBerkahir;
  final String? MdrKeteranganProgres;
  final String? MdrPremiPerBulan;
  final String? MdrTmt;
  final String? MdrTmb;
  final String? MdrRenewalJatuhTempo;
  final String? MdrTahunPipeline;
  final String? KanalDistribusi;
  final String? InsuranceAgent;
  final String? KaUnit;
  final String? KaKPM;
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
  final String? PKSType;
  final String? PaymentMethod;
  final String? MdrTanggalLahirDireksi;
  final String? MdrKeteranganSinergiBankMandiri;
  final String? NamaBURenewal;
  final String? MdrKodeBU;
  final List<RiwayatSalesActivityModel>? RiwayatSalesActivity;
  final ImageModel? image;

  PipelineModel({
    required this.Id,
    required this.MdrName,
    this.CreatedBy,
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
    this.MdrPremiPerBulan,
    this.MdrTmt,
    this.MdrTmb,
    this.MdrRenewalJatuhTempo,
    this.MdrTahunPipeline,
    this.KanalDistribusi,
    this.InsuranceAgent,
    this.KaUnit,
    this.KaKPM,
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
    this.PKSType,
    this.PaymentMethod,
    this.RiwayatSalesActivity,
    this.MdrTanggalLahirDireksi,
    this.MdrKeteranganSinergiBankMandiri,
    this.NamaBURenewal,
    this.MdrKodeBU,
    this.image,
  });

  factory PipelineModel.fromJson(Map<String, dynamic> json) {
    ImageModel? image;
    List<RiwayatSalesActivityModel> RiwayatSalesActivity = [];

    if (json['image'] != null) {
      image = ImageModel.fromJson(json['image']);
    }

    if(json['RiwayatSalesActivity'] != null) {
      json['RiwayatSalesActivity']
        .forEach((item) => RiwayatSalesActivity.add(RiwayatSalesActivityModel.fromJson(item)));
    }

    return PipelineModel(
      Id: json['Id'],
      CreatedBy: json['CreatedBy'] ?? "",
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
      MdrTanggalAktifitasBerkahir: json['MdrTanggalAktifitasBerkahir'] ?? "",
      MdrKeteranganProgres: json['MdrKeteranganProgres'] ?? "",
      MdrPremiPerBulan: json['MdrPremiPerBulan'] ?? "",
      MdrTmt: json['MdrTmt'] ?? "",
      MdrTmb: json['MdrTmb'] ?? "",
      MdrRenewalJatuhTempo: json['MdrRenewalJatuhTempo'] ?? "",
      MdrTahunPipeline: json['MdrTahunPipeline'] ?? "",
      KanalDistribusi: json['KanalDistribusi'] ?? "",
      InsuranceAgent: json['InsuranceAgent'] ?? "",
      KaUnit: json['KaUnit'] ?? "",
      KaKPM: json['KaKPM'] ?? "",
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
      PKSType: json['PKSType'] ?? "",
      PaymentMethod: json['PaymentMethod'] ?? "",
      MdrTanggalLahirDireksi: json['MdrTanggalLahirDireksi'] ?? "",
      MdrKeteranganSinergiBankMandiri: json['MdrKeteranganSinergiBankMandiri'] ?? "",
      NamaBURenewal: json['NamaBURenewal'] ?? "",
      MdrKodeBU: json['MdrKodeBU'] ?? "",
      RiwayatSalesActivity: RiwayatSalesActivity,
      image: image
    );
  }
}
