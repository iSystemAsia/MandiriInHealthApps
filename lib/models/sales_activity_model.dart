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
  final String? Provinsi;
  final String? Kabupaten;
  final String? Kecamatan;
  final String? Kelurahan;
  final String? KodePos;
  final String? NoTelp;
  final String? Email;
  final String? GWP;
  final String? CreatedBy;
  final String? KanalDistribusi;
  final String? NamaBadanUsaha;
  final String? KategoriAsuransiEksisting;
  final String? AsuransiEkisiting;
  final String? SinergiBankMandiri;
  final String? KepalaUnit;
  final String? AgenAsuransi;
  final String? NamaBroker;
  final String? TipeProses;
  final String? ProdukAsuransiSebelumnya;
  final String? KategoriAsuransiKompetitor;
  final String? ProdukDitawarkan;
  final String? AsuransiKompetitor;
  final String? AsuransiPemenang;
  final String? KategoriAsuransiPemenang;
  final String? KategoriLoss1;
  final String? KategoriLoss2;
  final String? Produk;
  final String? KategoriLapse1;
  final String? KategoriLapse2;
  final String? MdrKeteranganSinergiBankMandiri;
  final String? MdrHargaPenawaran;
  final String? MdrTMT;
  final String? MdrHargaPenawaranKompetitor;
  final String? MdrTMB;
  final String? MdrAlasanMandiriTerpilih;
  final String? MdrHargaPenawaranPemenang;
  final String? MdrKeteranganLoss;
  final String? MdrAlasanPindahProduk;
  final String? MdrLossRasio;
  final String? MdrAlasanLapse;
  final String? MdrPremiDisetahunkan;
  final String? PolisStatus;
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
    this.Provinsi,
    this.Kabupaten,
    this.Kecamatan,
    this.Kelurahan,
    this.KodePos,
    this.NoTelp,
    this.Email,
    this.GWP,
    this.CreatedBy,
    this.KanalDistribusi,
    this.NamaBadanUsaha,
    this.KategoriAsuransiEksisting,
    this.AsuransiEkisiting,
    this.SinergiBankMandiri,
    this.KepalaUnit,
    this.AgenAsuransi,
    this.NamaBroker,
    this.TipeProses,
    this.ProdukAsuransiSebelumnya,
    this.KategoriAsuransiKompetitor,
    this.ProdukDitawarkan,
    this.AsuransiKompetitor,
    this.KategoriAsuransiPemenang,
    this.AsuransiPemenang,
    this.KategoriLoss1,
    this.KategoriLoss2,
    this.Produk,
    this.KategoriLapse1,
    this.KategoriLapse2,
    this.MdrKeteranganSinergiBankMandiri,
    this.MdrHargaPenawaran,
    this.MdrTMT,
    this.MdrHargaPenawaranKompetitor,
    this.MdrTMB,
    this.MdrAlasanMandiriTerpilih,
    this.MdrHargaPenawaranPemenang,
    this.MdrKeteranganLoss,
    this.MdrAlasanPindahProduk,
    this.MdrLossRasio,
    this.MdrAlasanLapse,
    this.MdrPremiDisetahunkan,
    this.PolisStatus,
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
      Provinsi: json['Provinsi'] ?? "",
      Kabupaten: json['Kabupaten'] ?? "",
      Kecamatan: json['Kecamatan'] ?? "",
      Kelurahan: json['Kelurahan'] ?? "",
      KodePos: json['KodePos'] ?? "",
      NoTelp: json['NoTelp'] ?? "",
      Email: json['Email'] ?? "",
      GWP: json['GWP'] ?? "",
      CreatedBy: json['CreatedBy'] ?? "",
      KanalDistribusi: json['KanalDistribusi'] ?? "",
      NamaBadanUsaha: json['NamaBadanUsaha'] ?? "",
      KategoriAsuransiEksisting: json['KategoriAsuransiEksisting'] ?? "",
      AsuransiEkisiting: json['AsuransiEkisiting'] ?? "",
      SinergiBankMandiri: json['SinergiBankMandiri'] ?? "",
      KepalaUnit: json['KepalaUnit'] ?? "",
      AgenAsuransi: json['AgenAsuransi'] ?? "",
      NamaBroker: json['NamaBroker'] ?? "",
      TipeProses: json['TipeProses'] ?? "",
      ProdukAsuransiSebelumnya: json['ProdukAsuransiSebelumnya'] ?? "",
      KategoriAsuransiKompetitor: json['KategoriAsuransiKompetitor'] ?? "",
      ProdukDitawarkan: json['ProdukDitawarkan'] ?? "",
      AsuransiKompetitor: json['AsuransiKompetitor'] ?? "",
      KategoriAsuransiPemenang: json['KategoriAsuransiPemenang'] ?? "",
      AsuransiPemenang: json['AsuransiPemenang'] ?? "",
      KategoriLoss1: json['KategoriLoss1'] ?? "",
      KategoriLoss2: json['KategoriLoss2'] ?? "",
      Produk: json['Produk'] ?? "",
      KategoriLapse1: json['KategoriLapse1'] ?? "",
      KategoriLapse2: json['KategoriLapse2'] ?? "",
      MdrKeteranganSinergiBankMandiri: json['MdrKeteranganSinergiBankMandiri'] ?? "",
      MdrHargaPenawaran: json['MdrHargaPenawaran'] ?? "",
      MdrTMT: json['MdrTMT'] ?? "",
      MdrHargaPenawaranKompetitor: json['MdrHargaPenawaranKompetitor'] ?? "",
      MdrTMB: json['MdrTMB'] ?? "",
      MdrAlasanMandiriTerpilih: json['MdrAlasanMandiriTerpilih'] ?? "",
      MdrHargaPenawaranPemenang: json['MdrHargaPenawaranPemenang'] ?? "",
      MdrKeteranganLoss: json['MdrKeteranganLoss'] ?? "",
      MdrAlasanPindahProduk: json['MdrAlasanPindahProduk'] ?? "",
      MdrLossRasio: json['MdrLossRasio'] ?? "",
      MdrAlasanLapse: json['MdrAlasanLapse'] ?? "",
      MdrPremiDisetahunkan: json['MdrPremiDisetahunkan'] ?? "",
      PolisStatus: json['PolisStatus'] ?? "",
      image: json['image'] != null ? ImageModel.fromJson(json['image']) : null
    );
  }
}
