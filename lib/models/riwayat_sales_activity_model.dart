// ignore_for_file: non_constant_identifier_names

class RiwayatSalesActivityModel {
  final String? MdrStatusAktifitas;
  final String? MdrTanggalAktivitasTerkahir;
  final String? UpdateAktivitas;
  final bool? MdrKomitmen;
  final String? MdrKeteranganProgres;

  RiwayatSalesActivityModel({
    this.MdrStatusAktifitas,
    this.MdrTanggalAktivitasTerkahir,
    this.UpdateAktivitas,
    this.MdrKomitmen,
    this.MdrKeteranganProgres,
  });

  factory RiwayatSalesActivityModel.fromJson(Map<String, dynamic> json) {
    return RiwayatSalesActivityModel(
      MdrStatusAktifitas: json['MdrStatusAktifitas'] ?? "",
      MdrTanggalAktivitasTerkahir: json['MdrTanggalAktivitasTerkahir'] ?? "",
      UpdateAktivitas: json['UpdateAktivitas'] ?? "",
      MdrKomitmen: json['MdrKomitmen'] ?? false,
      MdrKeteranganProgres: json['MdrKeteranganProgres'] ?? ""
    );
  }
}